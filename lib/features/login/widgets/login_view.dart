import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/features/login/bloc/login_bloc.dart';
import 'package:wakefully_analyzer/legacy/figma_sizer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:wakefully_analyzer/legacy/widgets/underlined_clickable_text.dart';
import 'package:wakefully_analyzer/widgets/formz_text_input.dart';

import '../../../legacy/custom_colors.dart';
import '../../../resources.dart';
import '../login_actions.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 24.fh, bottom: 10.fh),
          child: Text(
            AppLocalizations.of(context)!.login,
            textAlign: TextAlign.center,
            style: GoogleFonts.lora(
              fontSize: 24.fsp,
              color: CustomColors.anxiousTeal_0,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.35.fsp,
            ),
          ),
        ),
        BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) => previous.email != current.email,
          builder: (context, state) {
            return FormzTextInput(
              state.email,
              hintText: AppLocalizations.of(context)!.email,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              inputFormatters: [
                FilteringTextInputFormatter.deny(RegExp(r'\s\b|\b\s'))
              ],
              onChanged: (value) =>
                  context.read<LoginBloc>().add(LoginEvent.emailChanged(value)),
              onSubmitted: (_) =>
                  context.read<LoginBloc>().add(const LoginEvent.validated()),
              label: AppLocalizations.of(context)!.email,
              suffixIcon: SvgPicture.asset(
                Resources.icons.email,
                height: 22.fh,
                fit: BoxFit.scaleDown,
                colorFilter: const ColorFilter.mode(
                  CustomColors.anxiousTeal_0,
                  BlendMode.srcIn,
                ),
              ),
            );
          },
        ),
        SizedBox(height: 16.fh),
        BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return FormzTextInput(
              state.password,
              hintText: AppLocalizations.of(context)!.password,
              obscureText: true,
              textInputAction: TextInputAction.done,
              label: AppLocalizations.of(context)!.password,
              suffixIcon: SvgPicture.asset(
                Resources.icons.password,
                height: 22.fh,
                fit: BoxFit.scaleDown,
                colorFilter: const ColorFilter.mode(
                  CustomColors.anxiousTeal_0,
                  BlendMode.srcIn,
                ),
              ),
              onChanged: (value) => context
                  .read<LoginBloc>()
                  .add(LoginEvent.passwordChanged(value)),
              onSubmitted: (value) {
                context.read<LoginBloc>().add(const LoginEvent.submitted());
              },
            );
          },
        ),
        SizedBox(height: 24.fh),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 14.fh),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UnderlinedClickableText(
                  startText:
                      "${AppLocalizations.of(context)!.dontHaveAnAccount} ",
                  underlinedText: AppLocalizations.of(context)!.signUp,
                  onUnderlinedTap: () => context
                      .read<LoginBloc>()
                      .add(const LoginEvent.changedView(LoginActions.register)),
                ),
                SizedBox(height: 2.fh),
                UnderlinedClickableText(
                  underlinedText:
                      "${AppLocalizations.of(context)!.forgotPassword}?",
                  onUnderlinedTap: () => context.read<LoginBloc>().add(
                      const LoginEvent.changedView(
                          LoginActions.forgotPassword)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
