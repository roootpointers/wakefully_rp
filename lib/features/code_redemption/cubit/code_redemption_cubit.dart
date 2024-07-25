import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/core/page_state.dart';
import 'package:wakefully_analyzer/data/promo_codes/promo_codes_repository.dart';

part 'code_redemption_cubit.freezed.dart';
part 'code_redemption_state.dart';

@injectable
class CodeRedemptionCubit extends Cubit<CodeRedemptionState> {
  final PromoCodesRepository _promoCodesRepository;

  CodeRedemptionCubit(this._promoCodesRepository)
      : super(const CodeRedemptionState());

  void redeemCode(String code) async {
    emit(state.copyWith(pageStatus: const PageState.loading()));
    var either = await _promoCodesRepository.redeemPromoCode(code);

    either.fold(
      (failure) => emit(state.copyWith(
        pageStatus: PageState.failure(message: failure.message),
      )),
      (_) => _onRedemptionSuccess(),
    );
  }

  _onRedemptionSuccess() {
    emit(state.copyWith(pageStatus: const PageState.success()));
  }
}
