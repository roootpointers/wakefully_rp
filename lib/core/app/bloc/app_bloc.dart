import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:wakefully_analyzer/data/app/app_repository.dart';
import 'package:wakefully_analyzer/data/contracts/version_info.dart';

part 'app_bloc.freezed.dart';
part 'app_bloc.g.dart';
part 'app_event.dart';
part 'app_state.dart';

@singleton
class AppBloc extends HydratedBloc<AppEvent, AppState> {
  final PackageInfo _packageInfo;
  final AppRepository _appRepository;

  AppBloc(this._packageInfo, this._appRepository) : super(AppState()) {
    on<_Started>(_onStarted);
    on<_Onboarded>(_onOnboarded);
    on<_DailyIntentionJournalCompleted>(_onDailyIntentionJournalCompleted);
  }

  String get version => _packageInfo.version;

  @override
  AppState? fromJson(Map<String, dynamic> json) => AppState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AppState state) => state.toJson();

  FutureOr<void> _onOnboarded(_Onboarded event, Emitter<AppState> emit) {
    emit(state.copyWith(onboarded: true));
  }

  FutureOr<void> _onDailyIntentionJournalCompleted(
      _DailyIntentionJournalCompleted event, Emitter<AppState> emit) {
    emit(state.copyWith(hasCompletedDailyIntentionJournal: true));
  }

  FutureOr<void> _onStarted(_Started event, Emitter<AppState> emit) async {
    var either = await _appRepository.getVersionInfo();

    either.fold((failure) {}, (versionInfo) {
      _performVersionCheck(versionInfo, emit);
    });
  }

  void _performVersionCheck(VersionInfo versionInfo, Emitter<AppState> emit) {
    var serverVersion = Version.parse(versionInfo.latestMobileVersion);
    var mobileVersion = Version.parse(version);

    if (serverVersion.major > mobileVersion.major ||
        (serverVersion.major == mobileVersion.major &&
            serverVersion.minor > mobileVersion.minor)) {
      emit(state.copyWith(
          upgradeMessage: versionInfo.upgradeMessage,
          upgradeAvailable: true,
          forceUpgrade: versionInfo.forceUpgrade));
    }
  }
}
