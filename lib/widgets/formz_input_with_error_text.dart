import 'package:formz/formz.dart';

abstract class FormzInputWithErrorText<T, E> extends FormzInput<T, E> {
  const FormzInputWithErrorText.pure(super.value) : super.pure();
  const FormzInputWithErrorText.dirty(super.value) : super.dirty();

  String? get errorText;
}
