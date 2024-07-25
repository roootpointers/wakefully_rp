import '../../../widgets/formz_input_with_error_text.dart';

enum NameValidationError { tooShort }

class Name extends FormzInputWithErrorText<String, NameValidationError> {
  const Name.pure() : super.pure('');
  const Name.dirty([super.value = '']) : super.dirty();

  @override
  NameValidationError? validator(String value) {
    return value.length >= 3 ? null : NameValidationError.tooShort;
  }

  @override
  String? get errorText => switch (error) {
        NameValidationError.tooShort => 'must be at least 3 characters',
        null => null
      };
}
