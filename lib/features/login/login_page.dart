import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:formz/formz.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wakefully_analyzer/legacy/widgets/wakefully_progress_indicator.dart';

import '../../core/authentication/bloc/authentication_bloc.dart';
import '../../dependency_container.dart';
import '../../legacy/custom_colors.dart';
import '../../legacy/figma_sizer.dart';
import '../../legacy/widgets/underlined_clickable_text.dart';
import '../../legacy/widgets/wakefully_snackbar.dart';
import '../../resources.dart';
import '../../widgets/logo.dart';
import 'bloc/login_bloc.dart';
import 'login_actions.dart';
import 'widgets/forgot_password_view.dart';
import 'widgets/login_view.dart';
import 'widgets/register_view.dart';

@RoutePage<bool>()
class LoginPage extends StatelessWidget implements AutoRouteWrapper {
  final void Function(bool) onLoginResult;
  const LoginPage({super.key, required this.onLoginResult});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.loginSuccess == null) return;

            if (state.formStatus == FormzSubmissionStatus.failure) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(buildSnackbar(state.message!));
            }
          },
        ),
        BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            if (state is Authenticated) {
              onLoginResult(true);
            }
          },
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 70.fh,
                        bottom: 24.fh,
                        left: 16.fw,
                        right: 16.fw,
                      ),
                      child: const Logo(),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.fw),
                        child: BlocBuilder<LoginBloc, LoginState>(
                          builder: (context, state) {
                            return switch (state.action) {
                              LoginActions.login => const LoginView(),
                              LoginActions.register => const RegisterView(),
                              LoginActions.forgotPassword =>
                                const ForgotPasswordView(),
                            };
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 56.0.fh,
                      width: 335.fw,
                      child: BlocBuilder<LoginBloc, LoginState>(
                        buildWhen: (previous, current) =>
                            previous.formStatus != current.formStatus,
                        builder: (context, state) {
                          return TextButton(
                            onPressed: () {
                              context
                                  .read<LoginBloc>()
                                  .add(const LoginEvent.submitted());
                            },
                            child: state.formStatus ==
                                    FormzSubmissionStatus.inProgress
                                ? const WakefullyProgressIndicator()
                                : Text(
                                    AppLocalizations.of(context)!.continueText,
                                    style: GoogleFonts.openSans(
                                        fontSize: 16.fsp,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.35.fsp),
                                  ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 18.fh),
                      child: UnderlinedClickableText(
                        startText:
                            "${AppLocalizations.of(context)!.bySigningInYouAgreeToOur} ",
                        underlinedText:
                            AppLocalizations.of(context)!.termsAndConditions,
                        fontSize: 10.fsp,
                        textColor: CustomColors.gray4,
                        onUnderlinedTap: () =>
                            launchUrlString(Resources.urls.termsAndConditions),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<LoginBloc>(),
      child: this,
    );
  }
}
