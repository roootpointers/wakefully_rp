import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/material/icons.dart' as material_icons;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';
import 'package:wakefully_analyzer/core/action_state.dart';
import 'package:wakefully_analyzer/features/dream_decoder/developer_mode/bloc/developer_mode_bloc.dart';
import 'package:wakefully_analyzer/widgets/action_overlay.dart';

import '../../core/app/bloc/app_bloc.dart';
import '../../core/authentication/bloc/authentication_bloc.dart';
import '../../legacy/custom_colors.dart';
import '../../legacy/widgets/wakefully_snackbar.dart';
import '../../resources.dart';
import '../purchases/bloc/purchases_bloc.dart';
import 'widgets/account_information.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthenticationBloc, AuthenticationState>(
            listener: (context, state) {
          return switch (state) {
            Authenticated authenticated => switch (
                  authenticated.deactivateState) {
                ActionStateInProgress() => ActionOverlay.of(context)
                    .show(message: "Deactivating your account..."),
                (ActionStateSuccess() || ActionStateIdle()) =>
                  ActionOverlay.of(context).hide(),
                ActionStateFailure failure => {
                    ActionOverlay.of(context).hide(),
                    context.router.popForced(),
                    ScaffoldMessenger.of(context)
                        .showSnackBar(buildSnackbar(failure.message)),
                  }
              },
            _ => {}
          };
        }),
        BlocListener<DeveloperModeBloc, DeveloperModeState>(
          listenWhen: (previous, current) =>
              previous.enabled != current.enabled,
          listener: (context, state) {
            if (state.enabled) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(buildSnackbar("You are a developer!"));
            }
          },
        ),
        BlocListener<PurchasesBloc, PurchasesState>(listener: (context, state) {
          switch (state) {
            case InitializedPurchases():
              switch (state.restorePurchasesState) {
                case ActionStateSuccess():
                  ActionOverlay.of(context).hide();
                  ScaffoldMessenger.of(context)
                      .showSnackBar(buildSnackbar("Purchases restored!"));
                  break;
                case ActionStateFailure():
                  ActionOverlay.of(context).hide();
                  ScaffoldMessenger.of(context).showSnackBar(
                      buildSnackbar("Failed to restore purchases!"));
                  break;
                case ActionStateInProgress():
                  ActionOverlay.of(context)
                      .show(message: "Restoring purchases...");
                  break;
                case ActionStateIdle():
                  ActionOverlay.of(context).hide();
                  break;
              }
              break;
            case UninitializedPurchases():
              break;
          }
        })
      ],
      child: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: CustomColors.anxiousTeal_10,
                      child: const AccountInformation(),
                    ),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: CustomColors.anxiousTeal_10,
                      child: ExpansionTile(
                          title: Text("Subscription Plan",
                              style: GoogleFonts.openSans(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: CustomColors.anxiousTeal_0)),
                          iconColor: CustomColors.anxiousTeal_0,
                          collapsedIconColor: CustomColors.anxiousTeal_0,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 8, right: 12, bottom: 16),
                              child: BlocBuilder<PurchasesBloc, PurchasesState>(
                                builder: (context, state) {
                                  return Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                              style: ButtonStyle(
                                                  shape:
                                                      MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24)),
                                              )),
                                              onPressed: () => context
                                                  .read<PurchasesBloc>()
                                                  .add(const PurchasesEvent
                                                      .purchasesRestored()),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Text("Restore",
                                                    style: GoogleFonts.openSans(
                                                      fontSize: 17,
                                                    )),
                                              )),
                                          const SizedBox(width: 8),
                                          const _SubscribeOrUpgradeButton(),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              ),
                            )
                          ]),
                    ),
                    _ProfileCard("Share", Resources.icons.share, () {
                      final box = context.findRenderObject() as RenderBox?;
                      return Share.share(
                          'Unlock your dreams with AI analysis!\n'
                          'https://apps.apple.com/app/id1591415966',
                          sharePositionOrigin:
                              box!.localToGlobal(Offset.zero) & box.size);
                    }),
                    _ProfileCard(
                        "Terms & Conditions",
                        Resources.icons.arrowRight,
                        () =>
                            launchUrlString(Resources.urls.termsAndConditions)),
                    _ProfileCard("Logout", Resources.icons.arrowRight, () {
                      _showLogoutConfirmationDialog(context);
                    }),
                    _ProfileCard("Deactivate", Resources.icons.arrowRight,
                        () => _showDeactivateConfirmationDialog(context)),
                    BlocBuilder<DeveloperModeBloc, DeveloperModeState>(
                      builder: (context, state) {
                        return state.enabled
                            ? _ProfileCard(
                                "Developer Options",
                                Resources.icons.arrowRight,
                                (() => _showDeveloperOptions(context)))
                            : Container();
                      },
                    ),
                    const Spacer(),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "\u00A9Wakefully - Version ${context.read<AppBloc>().version}",
                      style: GoogleFonts.openSans(
                        fontSize: 13,
                        color: CustomColors.grayVersion,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Visit ",
                            style: GoogleFonts.openSans(
                              fontSize: 13,
                              color: CustomColors.grayVersion,
                            ),
                          ),
                          TextSpan(
                            text: "wakefully.io",
                            recognizer: TapGestureRecognizer()
                              ..onTap =
                                  () => launchUrlString(Resources.urls.siteUrl),
                            style: GoogleFonts.openSans(
                              decoration: TextDecoration.underline,
                              fontSize: 13,
                              color: CustomColors.sadBlue_0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  _showDeveloperOptions(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: BlocBuilder<DeveloperModeBloc, DeveloperModeState>(
                  builder: (context, state) {
                    var premiumEnabled = state.subscriptions;
                    return Column(
                      children: [
                        Text(
                          "Developer Options",
                          style: GoogleFonts.openSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SwitchListTile(
                            secondary: premiumEnabled
                                ? const Icon(
                                    material_icons
                                        .Icons.monetization_on_outlined,
                                    color: Colors.amberAccent,
                                  )
                                : const Icon(
                                    material_icons.Icons.money_off,
                                    color: Colors.white,
                                  ),
                            title: Text("Premium Subscription",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                )),
                            subtitle: Text("Toggles premium subscription",
                                style: GoogleFonts.openSans(
                                  color: Colors.grey,
                                )),
                            value: state.subscriptions,
                            onChanged: (_) => context
                                .read<DeveloperModeBloc>()
                                .add(const DeveloperModeEvent
                                    .premiumSubscriptionToggled())),
                      ],
                    );
                  },
                ),
              ),
            ),
          );
        });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  late TextEditingController _passwordController;

  void _showDeactivateConfirmationDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (innerContext) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Deactivate your account?',
                style: GoogleFonts.lora(
                    color: CustomColors.anxiousTeal_0,
                    fontWeight: FontWeight.w600)),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                      "You are about to permanently remove your account and all associated data from our system. Please note that this action is irreversible, and you will no longer have access to your account or any content within the app.\r\n\r\nEnter your password to confirm:",
                      style: GoogleFonts.openSans(color: Colors.white)),
                  const SizedBox(height: 16),
                  TextField(
                    style: GoogleFonts.openSans(color: Colors.white),
                    cursorColor: CustomColors.anxiousTeal_0,
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: GoogleFonts.openSans(color: Colors.white),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            actions: [
              TextButton(
                  onPressed: () {
                    context.router.popForced();
                    _passwordController.text = '';
                    context
                        .read<AuthenticationBloc>()
                        .add(const AuthenticationEvent.clearActions());
                  },
                  child: Text(
                    'No',
                    style: GoogleFonts.openSans(),
                  )),
              TextButton(
                  onPressed: () {
                    context.router.popForced();
                    context.read<AuthenticationBloc>().add(
                        AuthenticationEvent.deactivateRequested(
                            _passwordController.text));
                  },
                  child: Text(
                    'Yes',
                    style: GoogleFonts.openSans(),
                  ))
            ],
          );
        });
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (innerContext) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Confirm logout?',
                style: GoogleFonts.lora(
                    color: CustomColors.anxiousTeal_0,
                    fontWeight: FontWeight.w600)),
            content: Text('Are you sure you want to logout?',
                style: GoogleFonts.openSans(color: Colors.white)),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            actions: [
              TextButton(
                  onPressed: () => context.router.popForced(),
                  child: Text(
                    'No',
                    style: GoogleFonts.openSans(),
                  )),
              TextButton(
                  onPressed: () => context
                      .read<AuthenticationBloc>()
                      .add(const AuthenticationEvent.logoutRequested()),
                  child: Text(
                    'Yes',
                    style: GoogleFonts.openSans(),
                  ))
            ],
          );
        });
  }
}

class _SubscribeOrUpgradeButton extends StatelessWidget {
  const _SubscribeOrUpgradeButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PurchasesBloc, PurchasesState>(
      builder: (context, state) {
        switch (state) {
          case InitializedPurchases():
            var upgradeAvailable = state.subscribed && state.upgradeAvailable;

            return TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                )),
                onPressed: _subscribeOrUpdate(context, state),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(upgradeAvailable ? "Upgrade" : "Subscribe",
                      style: GoogleFonts.openSans(
                        fontSize: 17,
                      )),
                ));
          case UninitializedPurchases _:
            return Container();
        }
      },
    );
  }

  _subscribeOrUpdate(BuildContext context, InitializedPurchases state) {
    if (state.subscribed && state.upgradeAvailable) {
      return null;
    }

    if (!state.subscribed) {
      return () => context.router.push(const PaywallRoute());
    }

    return null;
  }
}

class _ProfileCard extends StatelessWidget {
  final String _text;
  final String _icon;
  final Function()? _onTap;

  const _ProfileCard(this._text, this._icon, this._onTap);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: CustomColors.anxiousTeal_10,
        child: InkWell(
          onTap: _onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 13),
            child: Row(
              children: [
                Expanded(
                  child: Text(_text,
                      style: GoogleFonts.openSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: CustomColors.anxiousTeal_0)),
                ),
                SvgPicture.asset(_icon),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
