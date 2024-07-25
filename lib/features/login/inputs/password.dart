import 'package:wakefully_analyzer/widgets/formz_input_with_error_text.dart';

enum PasswordValidationError { tooShort }

class Password
    extends FormzInputWithErrorText<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    return value.length >= 6 ? null : PasswordValidationError.tooShort;
  }

  @override
  String? get errorText => switch (error) {
        PasswordValidationError.tooShort => 'must be at least 6 characters',
        null => null
      };
}
