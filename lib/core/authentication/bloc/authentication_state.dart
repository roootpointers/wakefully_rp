part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.authenticated(
          {@Default(ActionState.idle()) ActionState deactivateState}) =
      Authenticated;
  const factory AuthenticationState.unauthenticated() = Unauthenticated;
  const factory AuthenticationState.unknown() = Unknown;

  factory AuthenticationState.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationStateFromJson(json);
}
