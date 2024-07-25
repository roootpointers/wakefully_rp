import 'package:freezed_annotation/freezed_annotation.dart';

part 'dream.freezed.dart';
part 'dream.g.dart';

@freezed
class Dream with _$Dream {
  factory Dream({
    required String id,
    String? title,
    required String content,
    @Default([]) List<int> completedFlowIds,
    required DateTime created,
  }) = _Dream;

  factory Dream.fromJson(Map<String, dynamic> json) => _$DreamFromJson(json);
}
