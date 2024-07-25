import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticated_user.freezed.dart';
part 'authenticated_user.g.dart';

@freezed
class AuthenticatedUser with _$AuthenticatedUser {
  const AuthenticatedUser._();

  factory AuthenticatedUser(
      {required String id,
      String? email,
      String? displayName}) = _AuthenticatedUser;

  String get firstName => displayName?.split(' ')[0] ?? '';

  factory AuthenticatedUser.fromJson(Map<String, dynamic> json) =>
      _$AuthenticatedUserFromJson(json);
}
