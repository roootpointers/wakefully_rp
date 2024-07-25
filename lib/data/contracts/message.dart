import 'package:freezed_annotation/freezed_annotation.dart';

import 'choice.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  factory Message({
    String? content,
    String? subContent,
    required String sender,
    List<Choice>? choices,
    required bool shouldHaveChoices,
    required bool allowTextInput,
    String? responseParameter,
    String? selectedChoice,
    @Default(false) bool disableChoices,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
