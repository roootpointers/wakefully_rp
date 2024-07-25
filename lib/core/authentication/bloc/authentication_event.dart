part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent() = _AuthenticationEvent;
  const factory AuthenticationEvent.loggedInChanged(bool isLoggedIn) =
      LoggedInChanged;
  const factory AuthenticationEvent.logoutRequested() = LogoutRequested;
  const factory AuthenticationEvent.deactivateRequested(String password) =
      DeactivateRequested;
  const factory AuthenticationEvent.clearActions() = ClearActions;
}
