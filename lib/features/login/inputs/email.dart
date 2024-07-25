import '../../../widgets/formz_input_with_error_text.dart';

enum EmailValidationError { invalid }

class Email extends FormzInputWithErrorText<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty([super.value = '']) : super.dirty();

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidationError? validator(String value) {
    return _emailRegExp.hasMatch(value) ? null : EmailValidationError.invalid;
  }

  @override
  String get errorText =>
      error == EmailValidationError.invalid ? 'is invalid' : '';
}
