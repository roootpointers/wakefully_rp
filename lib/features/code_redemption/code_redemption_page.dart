import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';
import 'package:wakefully_analyzer/core/app/widgets/retry_button.dart';
import 'package:wakefully_analyzer/features/code_redemption/cubit/code_redemption_cubit.dart';

import '../../core/page_state.dart';
import '../../dependency_container.dart';
import '../../legacy/custom_colors.dart';
import '../../resources.dart';
import '../purchases/bloc/purchases_bloc.dart';

@RoutePage()
class CodeRedemptionPage extends StatelessWidget {
  final String code;

  const CodeRedemptionPage({super.key, @PathParam("code") required this.code});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: BlocProvider(
            create: (context) => sl<CodeRedemptionCubit>()..redeemCode(code),
            child: BlocListener<CodeRedemptionCubit, CodeRedemptionState>(
              listener: (context, state) {
                var purchasesBloc = context.read<PurchasesBloc>();
                if (state.pageStatus is PageStateSuccess) {
                  purchasesBloc.add(const PurchasesEvent.subscriptionChecked());
                }
              },
              child: BlocBuilder<CodeRedemptionCubit, CodeRedemptionState>(
                builder: (context, state) {
                  return switch (state.pageStatus) {
                    PageStateInitial() => Container(),
                    PageStateLoading() => _RedemptionActivityIndicator(code),
                    PageStateSuccess() => _RedemptionSuccess(code),
                    PageStateFailure() => _RedemptionFailure(code),
                  };
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: SvgPicture.asset(
          Resources.icons.close,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
        onPressed: () => context.router.replaceAll([const HomeRoute()]));
  }
}

class _RedemptionActivityIndicator extends StatelessWidget {
  final String code;
  const _RedemptionActivityIndicator(this.code);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Center(
            child: SpinKitFadingCube(
          color: CustomColors.anxiousTeal_0,
          size: 50,
        )),
        const SizedBox(height: 16),
        Text('Redeeming code\r\n($code)',
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 22,
              color: Colors.white,
            ))
      ],
    );
  }
}

class _RedemptionSuccess extends StatelessWidget {
  final String code;
  const _RedemptionSuccess(this.code);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Align(alignment: Alignment.topRight, child: _CloseButton()),
            Text('You have successfully redeemed code:',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                    fontSize: 16, color: CustomColors.anxiousTeal_0)),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    code,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Text(
                'You may need to restart the app for the redemption to take effect',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                    fontSize: 16, color: CustomColors.anxiousTeal_0)),
          ],
        ),
      ),
    );
  }
}

class _RedemptionFailure extends StatelessWidget {
  final String code;
  const _RedemptionFailure(this.code);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Align(alignment: Alignment.topRight, child: _CloseButton()),
          const SizedBox(height: 32),
          Text(
            "Failed to redeem code ($code)\r\nPlease try again",
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 16,
              color: CustomColors.anxiousTeal_0,
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
              onTap: () => context.read<CodeRedemptionCubit>().redeemCode(code),
              child: const RetryButton()),
        ],
      ),
    );
  }
}
