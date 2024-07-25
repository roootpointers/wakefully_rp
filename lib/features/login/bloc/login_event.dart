part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent() = _LoginEvent;
  const factory LoginEvent.submitted() = LoginSubmitted;
  const factory LoginEvent.changedView(LoginActions action) = ChangedView;
  const factory LoginEvent.emailChanged(String value) = LoginEmailChanged;
  const factory LoginEvent.passwordChanged(String value) = LoginPasswordChanged;
  const factory LoginEvent.nameChanged(String value) = LoginNameChanged;
  const factory LoginEvent.validated() = LoginValidated;
}
