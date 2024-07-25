part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    String? name,
    String? email,
    @Default(ActionState.idle()) ActionState accountInformationUpdateStatus,
  }) = _ProfileState;
}
