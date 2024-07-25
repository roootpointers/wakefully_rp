part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState(
    bool? loginSuccess, {
    @Default(Email.pure()) email,
    @Default(Password.pure()) password,
    @Default(Name.pure()) name,
    bool? formIsValid,
    String? message,
    @Default(ActionState.idle()) ActionState forgotPasswordState,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus formStatus,
    @Default(LoginActions.register) LoginActions action,
  }) = _LoginState;
}
