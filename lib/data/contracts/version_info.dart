import 'package:freezed_annotation/freezed_annotation.dart';

part 'version_info.freezed.dart';
part 'version_info.g.dart';

@freezed
class VersionInfo with _$VersionInfo {
  factory VersionInfo(String latestMobileVersion, String upgradeMessage,
      bool forceUpgrade) = _VersionInfo;

  factory VersionInfo.fromJson(Map<String, dynamic> json) =>
      _$VersionInfoFromJson(json);
}
