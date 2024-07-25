import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/core/authentication/authentication_repository.dart';
import 'package:wakefully_analyzer/core/authentication/bloc/authentication_bloc.dart';

import '../../../core/action_state.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AuthenticationBloc _authenticationBloc;
  final AuthenticationRepository _authenticationRepository;

  ProfileBloc(this._authenticationBloc, this._authenticationRepository)
      : super(const ProfileState()) {
    on<_Started>(_onStarted);
    on<_AccountInformationUpdated>(_onAccountInformationUpdated);
  }

  Future<FutureOr<void>> _onStarted(
      _Started event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
        name: _authenticationBloc.authenticatedUser?.displayName,
        email: _authenticationBloc.authenticatedUser?.email));
  }

  Future<FutureOr<void>> _onAccountInformationUpdated(
      _AccountInformationUpdated event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
        accountInformationUpdateStatus: const ActionState.inProgress()));

    await _authenticationRepository.updateName(event.name);
    await _authenticationRepository.updateEmail(event.email);

    emit(state.copyWith(
        name: event.name,
        email: event.email,
        accountInformationUpdateStatus: const ActionState.success()));
  }
}
