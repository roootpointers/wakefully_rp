part of 'dreams_bloc.dart';

@freezed
class DreamsState with _$DreamsState {
  const factory DreamsState({
    @Default(<Dream>[]) List<Dream> dreams,
    @Default(ActionState.idle()) ActionState dreamsStatus,
    @Default(ActionState.idle()) ActionState dreamSaveStatus,
  }) = _DreamsState;
}
