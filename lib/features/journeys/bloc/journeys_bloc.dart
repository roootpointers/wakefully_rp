import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/data/journeys/journeys_repository.dart';
import 'package:wakefully_analyzer/data/nightmares/nightmare_repository.dart';

import '../../../core/authentication/authentication_repository.dart';
import '../../../core/page_state.dart';
import '../../../data/contracts/blob.dart';
import '../../../data/contracts/script_flip.dart';
import '../../purchases/premium_subscription_notifier.dart';

part 'journeys_bloc.freezed.dart';
part 'journeys_event.dart';
part 'journeys_state.dart';

@injectable
class JourneysBloc extends Bloc<JourneysEvent, JourneysState> {
  final NightmareRepository _nightmareRepository;
  final JourneysRepository _journeysRepository;

  final AuthenticationRepository _authenticationRepository;
  final PremiumSubscriptionNotifier _premiumSubscriptionNotifier;

  JourneysBloc(this._nightmareRepository, this._journeysRepository,
      this._authenticationRepository, this._premiumSubscriptionNotifier)
      : super(const _JourneysState()) {
    on<_Started>(_started);
    on<_BlobsCleared>(_blobsCleared);
    on<_Refreshed>(_refreshed);

    _authenticationRepository.authenticatedUser.listen((user) {
      if (user == null) {
        add(const JourneysEvent.blobsCleared());
      }
    });

    _premiumSubscriptionNotifier.addListener(() {
      add(const JourneysEvent.started());
    });
  }

  FutureOr<void> _started(_Started event, Emitter<JourneysState> emit) async {
    await Future.wait([_getBlobs(emit), _getScriptFlips(emit)]);
  }

  Future _getBlobs(Emitter<JourneysState> emit) async {
    emit(state.copyWith(blobsStatus: const PageState.loading()));

    if (_premiumSubscriptionNotifier.isPremiumSubscriber) {
      await _getAllBlobs(emit);
    } else {
      await _getLatestDreamBlob(emit);
    }
  }

  Future _getScriptFlips(Emitter<JourneysState> emit) async {
    var either = await _nightmareRepository.getMyScriptFlips();

    either.fold(
        (l) => emit(state.copyWith(
            scriptFlipsStatus: PageState.failure(message: l.message))),
        (r) => emit(state.copyWith(
            scriptFlipsStatus: const PageState.success(), scriptFlips: r)));
  }

  Future<void> _getLatestDreamBlob(Emitter<JourneysState> emit) async {
    var either = await _journeysRepository.getLatestDreamBlob();
    either.fold(
        (l) => emit(
            state.copyWith(blobsStatus: PageState.failure(message: l.message))),
        (r) {
      emit(state.copyWith(
          blobsStatus: const PageState.success(), blobs: r != null ? [r] : []));
    });
  }

  Future _getAllBlobs(Emitter<JourneysState> emit) async {
    var either = await _journeysRepository.getMyBlobs();

    either.fold(
        (l) => emit(
            state.copyWith(blobsStatus: PageState.failure(message: l.message))),
        (r) => emit(
            state.copyWith(blobsStatus: const PageState.success(), blobs: r)));
  }

  FutureOr<void> _blobsCleared(
      _BlobsCleared event, Emitter<JourneysState> emit) {
    emit(const JourneysState());
  }

  FutureOr<void> _refreshed(_Refreshed event, Emitter<JourneysState> emit) {
    add(const JourneysEvent.started());
  }
}
