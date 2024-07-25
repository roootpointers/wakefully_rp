part of 'developer_mode_bloc.dart';

@freezed
class DeveloperModeState with _$DeveloperModeState {
  const factory DeveloperModeState(
      {@Default(false) enabled,
      @Default(false) subscriptions}) = _DeveloperModeState;
}
