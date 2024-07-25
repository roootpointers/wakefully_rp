import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/core/authentication/authentication_repository.dart';

import '../../../core/action_state.dart';
import '../inputs/email.dart';
import '../inputs/name.dart';
import '../inputs/password.dart';
import '../login_actions.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationRepository _authenticationRepository;

  LoginBloc(this._authenticationRepository) : super(const LoginState(null)) {
    on<LoginSubmitted>(submit);
    on<ChangedView>(changedView);
    on<LoginEmailChanged>(emailChanged);
    on<LoginPasswordChanged>(passwordChanged);
    on<LoginNameChanged>(nameChanged);
    on<LoginValidated>(validate);
  }

  FutureOr<void> login(LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(state.copyWith(formStatus: FormzSubmissionStatus.inProgress));
    if (!_validate(email: state.email, password: state.password)) {
      emit(state.copyWith(
          formIsValid: false, formStatus: FormzSubmissionStatus.canceled));
      return;
    }

    var either = await _authenticationRepository.login(
      email: state.email.value,
      password: state.password.value,
    );

    either.fold(
      (l) => emit(state.copyWith(
          loginSuccess: false,
          message: l.message,
          formStatus: FormzSubmissionStatus.failure)),
      (r) => emit(state.copyWith(
          loginSuccess: true, formStatus: FormzSubmissionStatus.success)),
    );
  }

  FutureOr<void> changedView(ChangedView event, Emitter<LoginState> emit) {
    emit(state.copyWith(loginSuccess: null, action: event.action));
  }

  FutureOr<void> submit(LoginSubmitted event, Emitter<LoginState> emit) async {
    switch (state.action) {
      case LoginActions.login:
        await login(event, emit);
        break;
      case LoginActions.register:
        await register(event, emit);
        break;
      case LoginActions.forgotPassword:
        await forgotPassword(event, emit);
        break;
    }
  }

  FutureOr<void> register(
      LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(state.copyWith(formStatus: FormzSubmissionStatus.inProgress));
    if (!_validate(
        email: state.email, password: state.password, name: state.name)) {
      emit(state.copyWith(
          formIsValid: false, formStatus: FormzSubmissionStatus.canceled));
      return;
    }

    var either = await _authenticationRepository.createAccount(
        email: state.email.value,
        password: state.password.value,
        displayName: state.name.value);

    either.fold(
      (l) => emit(state.copyWith(loginSuccess: false)),
      (r) => emit(state.copyWith(loginSuccess: true)),
    );
  }

  FutureOr<void> forgotPassword(
      LoginSubmitted event, Emitter<LoginState> emit) async {
    if (_validate(email: state.email)) {
      emit(state.copyWith(forgotPasswordState: const ActionState.success()));
      var either =
          await _authenticationRepository.forgotPassword(state.email.value);

      either.fold(
          (l) => emit(
                state.copyWith(
                    forgotPasswordState: ActionState.failure(l.message)),
              ),
          (r) => emit(state.copyWith(
              forgotPasswordState: const ActionState.success())));
    } else {
      emit(state.copyWith(
        formIsValid: false,
        formStatus: FormzSubmissionStatus.canceled,
      ));
    }
  }

  void emailChanged(LoginEmailChanged event, Emitter<LoginState> emit) {
    var email = Email.dirty(event.value.trim());

    emit(state.copyWith(
      email: email,
      formIsValid: _validate(email: email),
      loginSuccess: null,
      message: null,
    ));
  }

  bool? shouldValidate({Email? email, Password? password, Name? name}) {
    return state.formIsValid != null
        ? _validate(email: email, password: password, name: name)
        : null;
  }

  void passwordChanged(LoginPasswordChanged event, Emitter<LoginState> emit) {
    var password = Password.dirty(event.value.trim());

    emit(state.copyWith(
      password: password,
      formIsValid: _validate(),
      loginSuccess: null,
      message: null,
    ));
  }

  void nameChanged(LoginNameChanged event, Emitter<LoginState> emit) {
    var name = Name.dirty(event.value.trim());

    emit(state.copyWith(
      name: name,
      formIsValid: _validate(name: name),
      loginSuccess: null,
      message: null,
    ));
  }

  bool _validate({Name? name, Email? email, Password? password}) {
    if (name == null) {
      return Formz.validate([email ?? state.email, password ?? state.password]);
    }

    return Formz.validate([
      name,
      email ?? state.email,
      password ?? state.password,
    ]);
  }

  FutureOr<void> validate(LoginValidated event, Emitter<LoginState> emit) {
    emit(state.copyWith(formIsValid: _validate()));
  }
}
