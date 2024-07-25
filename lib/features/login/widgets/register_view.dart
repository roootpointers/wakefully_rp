import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/features/login/bloc/login_bloc.dart';
import 'package:wakefully_analyzer/features/login/login_actions.dart';
import 'package:wakefully_analyzer/legacy/figma_sizer.dart';
import 'package:wakefully_analyzer/legacy/widgets/underlined_clickable_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:wakefully_analyzer/widgets/formz_text_input.dart';

import '../../../legacy/custom_colors.dart';
import '../../../resources.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppLocalizations.of(context)!.registerMessage,
          textAlign: TextAlign.center,
          style: GoogleFonts.lora(
            fontSize: 24.fsp,
            color: CustomColors.anxiousTeal_0,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.35.fsp,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: 24.fh, right: 24.fh, left: 14.fh, bottom: 10.fh),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppLocalizations.of(context)!.createAnAccount,
              style: GoogleFonts.lora(
                fontSize: 13.fsp,
                color: CustomColors.white,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.35.fsp,
              ),
            ),
          ),
        ),
        BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) => previous.name != current.name,
          builder: (context, state) {
            return FormzTextInput(
              state.name,
              hintText: AppLocalizations.of(context)!.name,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              label: AppLocalizations.of(context)!.name,
              suffixIcon: SvgPicture.asset(
                Resources.icons.person,
                height: 22.fh,
                fit: BoxFit.scaleDown,
                colorFilter: const ColorFilter.mode(
                  CustomColors.anxiousTeal_0,
                  BlendMode.srcIn,
                ),
              ),
              onChanged: (value) =>
                  context.read<LoginBloc>().add(LoginEvent.nameChanged(value)),
              onSubmitted: (_) {
                context.read<LoginBloc>().add(const LoginEvent.validated());
              },
            );
          },
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
                context.read<LoginBloc>().add(const LoginEvent.validated());
              },
            );
          },
        ),
        SizedBox(height: 16.fh),
        BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) =>
              previous.password != current.password,
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
              onSubmitted: (_) {
                context.read<LoginBloc>().add(const LoginEvent.submitted());
              },
            );
          },
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.fh, right: 24.fh, top: 24.fh),
          child: Align(
            alignment: Alignment.centerLeft,
            child: UnderlinedClickableText(
              startText: "${AppLocalizations.of(context)!.existingUser} ",
              underlinedText: AppLocalizations.of(context)!.logIn,
              onUnderlinedTap: () => context
                  .read<LoginBloc>()
                  .add(const ChangedView(LoginActions.login)),
            ),
          ),
        ),
      ],
    );
  }
}
