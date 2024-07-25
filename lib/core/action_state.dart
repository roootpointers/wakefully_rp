import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_state.freezed.dart';
part 'action_state.g.dart';

@freezed
sealed class ActionState with _$ActionState {
  const factory ActionState.idle() = ActionStateIdle;
  const factory ActionState.inProgress() = ActionStateInProgress;
  const factory ActionState.success({String? message}) = ActionStateSuccess;
  const factory ActionState.failure(
    String message,
  ) = ActionStateFailure;

  factory ActionState.fromJson(Map<String, dynamic> json) =>
      _$ActionStateFromJson(json);
}
