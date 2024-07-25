part of 'dreams_bloc.dart';

@freezed
class DreamsEvent with _$DreamsEvent {
  const factory DreamsEvent.started() = _Started;
  const factory DreamsEvent.dreamSaved(String journeyId) = _DreamSaved;
}
