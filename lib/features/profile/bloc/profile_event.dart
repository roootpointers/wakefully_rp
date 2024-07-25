part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.accountInformationUpdated(
      {required String name,
      required String email}) = _AccountInformationUpdated;
}
