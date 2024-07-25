import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice.freezed.dart';
part 'choice.g.dart';

@freezed
class Choice with _$Choice {
  factory Choice(
      {required String name,
      required String value,
      required bool showProcessing,
      required bool showKeyboard}) = _Choice;

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);
}
