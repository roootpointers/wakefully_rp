import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/features/login/bloc/login_bloc.dart';
import 'package:wakefully_analyzer/features/login/login_actions.dart';
import 'package:wakefully_analyzer/legacy/figma_sizer.dart';
import 'package:wakefully_analyzer/legacy/widgets/underlined_clickable_text.dart';
import 'package:wakefully_analyzer/widgets/formz_text_input.dart';

import '../../../legacy/custom_colors.dart';
import '../../../resources.dart';

//TODO: implement forgot password code verification

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Forgot Password',
          textAlign: TextAlign.center,
          style: GoogleFonts.lora(
            fontSize: 24.fsp,
            color: CustomColors.anxiousTeal_0,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.35.fsp,
          ),
        ),
        SizedBox(height: 24.fh),
        Padding(
          padding: EdgeInsets.only(left: 24.fw),
          child: Text(
            AppLocalizations.of(context)!.forgotPasswordMessage,
            style: GoogleFonts.lora(
              fontSize: 13.fsp,
              color: CustomColors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.35.fsp,
            ),
          ),
        ),
        SizedBox(height: 16.fh),
        BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) => previous.email != current.email,
          builder: (context, state) {
            return FormzTextInput(
              state.email,
              hintText: AppLocalizations.of(context)!.email,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              label: AppLocalizations.of(context)!.email,
              inputFormatters: [
                FilteringTextInputFormatter.deny(RegExp(r'\s\b|\b\s'))
              ],
              suffixIcon: SvgPicture.asset(
                Resources.icons.email,
                height: 22.fh,
                fit: BoxFit.scaleDown,
                colorFilter: const ColorFilter.mode(
                  CustomColors.anxiousTeal_0,
                  BlendMode.srcIn,
                ),
              ),
              onChanged: (value) =>
                  context.read<LoginBloc>().add(LoginEvent.emailChanged(value)),
              onSubmitted: (_) {
                context.read<LoginBloc>().add(const LoginEvent.submitted());
              },
            );
          },
        ),
        SizedBox(height: 16.fh),
        Padding(
          padding: EdgeInsets.only(left: 24.fw),
          child: Align(
            alignment: Alignment.centerLeft,
            child: UnderlinedClickableText(
              underlinedText: "Login?",
              onUnderlinedTap: () => context
                  .read<LoginBloc>()
                  .add(const LoginEvent.changedView(LoginActions.login)),
            ),
          ),
        ),
      ],
    );
  }
}
