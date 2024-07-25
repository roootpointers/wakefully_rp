import 'package:freezed_annotation/freezed_annotation.dart';

part 'dream_type.freezed.dart';
part 'dream_type.g.dart';

@freezed
class DreamType with _$DreamType {
  factory DreamType(String name) = _DreamType;

  factory DreamType.fromJson(Map<String, dynamic> json) =>
      _$DreamTypeFromJson(json);
}
