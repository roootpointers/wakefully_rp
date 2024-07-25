import 'package:freezed_annotation/freezed_annotation.dart';

part 'offerings_info.freezed.dart';
part 'offerings_info.g.dart';

@freezed
class OfferingsInfo with _$OfferingsInfo {
  const factory OfferingsInfo({
    required String monthlyPrice,
    required bool isEligibleForTrial,
    required String annualPrice,
    required int savings,
  }) = _OfferingsInfo;

  factory OfferingsInfo.fromJson(Map<String, dynamic> json) =>
      _$OfferingsInfoFromJson(json);
}
