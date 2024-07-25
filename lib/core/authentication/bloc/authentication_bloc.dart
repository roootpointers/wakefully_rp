import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/core/authentication/authentication_repository.dart';

import '../../action_state.dart';
import '../authenticated_user.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_bloc.g.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

@singleton
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState>
    with HydratedMixin {
  final AuthenticationRepository _authenticationRepository;

  late StreamSubscription<AuthenticatedUser?> userSubscription;

  late AuthenticatedUser? authenticatedUser;

  AuthenticationBloc(this._authenticationRepository)
      : super(const AuthenticationState.unknown()) {
    userSubscription = _authenticationRepository.authenticatedUser
        .listen(handleAuthenticatedUserChanged);

    on<LoggedInChanged>(_onLoggedInChanged);
    on<LogoutRequested>(_onLogoutRequested);
    on<DeactivateRequested>(_onDeactivateRequested);
    on<ClearActions>(_onClearActions);
  }

  void handleAuthenticatedUserChanged(AuthenticatedUser? user) async {
    var loggedIn = user != null;
    authenticatedUser = user;
    add(AuthenticationEvent.loggedInChanged(loggedIn));
  }

  FutureOr<void> _onLoggedInChanged(
      LoggedInChanged event, Emitter<AuthenticationState> emit) {
    if (event.isLoggedIn) {
      emit(const AuthenticationState.authenticated());
    } else {
      emit(const AuthenticationState.unauthenticated());
    }
  }

  @override
  AuthenticationState? fromJson(Map<String, dynamic> json) =>
      AuthenticationState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AuthenticationState state) => state.toJson();

  FutureOr<void> _onLogoutRequested(
      LogoutRequested event, Emitter<AuthenticationState> emit) async {
    emit(const AuthenticationState.unauthenticated());
    await _authenticationRepository.logout();
  }

  Future<FutureOr<void>> _onDeactivateRequested(
      DeactivateRequested event, Emitter<AuthenticationState> emit) async {
    _setDeactivateState(emit, const ActionState.inProgress());

    var email = authenticatedUser?.email;

    var either = await _authenticationRepository.deactivateAccount(
        email!, event.password);

    either.fold(
        (l) => _setDeactivateState(emit, ActionState.failure(l.message)),
        (r) => null);
  }

  void _setDeactivateState(
      Emitter<AuthenticationState> emit, ActionState deactivateState) {
    switch (state) {
      case Authenticated authenticated:
        emit(authenticated.copyWith(deactivateState: deactivateState));
        break;
    }
  }

  FutureOr<void> _onClearActions(
      ClearActions event, Emitter<AuthenticationState> emit) {
    switch (state) {
      case Authenticated authenticated:
        emit(authenticated.copyWith(deactivateState: const ActionState.idle()));
    }
  }
}
