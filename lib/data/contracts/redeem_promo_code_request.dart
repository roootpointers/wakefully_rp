import 'package:freezed_annotation/freezed_annotation.dart';

part 'redeem_promo_code_request.freezed.dart';
part 'redeem_promo_code_request.g.dart';

@freezed
class RedeemPromoCodeRequest with _$RedeemPromoCodeRequest {
  factory RedeemPromoCodeRequest(String code) = _RedeemPromoCodeRequest;

  factory RedeemPromoCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$RedeemPromoCodeRequestFromJson(json);
}
