import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/failure.dart';
import '../contracts/redeem_promo_code_request.dart';
import '../wakefully_api.dart';

@injectable
class PromoCodesRepository {
  final WakefullyApi _api;

  PromoCodesRepository(this._api);

  Future<Either<Failure, void>> redeemPromoCode(String code) async {
    try {
      await _api.redeemPromoCode(RedeemPromoCodeRequest(code));
      return const Right(null);
    } on Exception catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
