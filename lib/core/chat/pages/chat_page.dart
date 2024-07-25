import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_text/styled_text.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';
import 'package:wakefully_analyzer/core/app/widgets/title_bar.dart';
import 'package:wakefully_analyzer/data/contracts/message.dart';
import 'package:wakefully_analyzer/utils/style_text_tags.dart';

import '../../../data/contracts/choice.dart';
import '../../../legacy/custom_colors.dart';
import '../../../resources.dart' as wakefully_resources;
import '../../app/widgets/retry_button.dart';
import '../bloc/chat_bloc.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late TextEditingController _userInputController;

  @override
  void initState() {
    super.initState();
    _userInputController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<ChatBloc, ChatState>(
            builder: (context, state) {
              return Column(
                children: [
                  TitleBar(child: Container()),
                  Expanded(
                    child: ListView.separated(
                        reverse: true,
                        padding: const EdgeInsets.all(24),
                        itemBuilder: ((context, index) {
                          final reversedIndex =
                              state.messages.length - index - 1;
                          final message = state.messages[reversedIndex];

                          if (message.sender == "system") {
                            return message.choices == null
                                ? _SystemMessage(message: message)
                                : Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        _SystemMessage(message: message),
                                        const SizedBox(height: 16),
                                        ...message.choices!.map((e) => Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 16.0),
                                              child: _Choice(
                                                  e, message, _submitChoice),
                                            )),
                                      ],
                                    ),
                                  );
                          } else if (message.sender == "initial") {
                            return Text(message.content!,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lora(
                                    fontSize: 22,
                                    color: CustomColors.gray5,
                                    fontWeight: FontWeight.bold));
                          } else if (message.sender == "user") {
                            return Text(message.content!,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lora(
                                    fontSize: 22,
                                    color: CustomColors.white,
                                    fontWeight: FontWeight.bold));
                          } else if (message.sender == "waiting") {
                            return const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SpinKitThreeBounce(
                                  color: CustomColors.anxiousTeal_0,
                                  size: 20.0,
                                ),
                              ],
                            );
                          } else if (message.sender == "retry") {
                            return GestureDetector(
                              onTap: () => context
                                  .read<ChatBloc>()
                                  .add(const ChatEvent.retry()),
                              child: const RetryButton(),
                            );
                          }
                          return null;
                        }),
                        separatorBuilder: (_, __) => const SizedBox(height: 4),
                        itemCount: state.messages.length),
                  ),
                  state.messages.isNotEmpty &&
                          state.messages.last.allowTextInput
                      ? Row(
                          children: [
                            Flexible(
                              child: TextField(
                                controller: _userInputController,
                                cursorColor: CustomColors.anxiousTeal_0,
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: CustomColors.anxiousTeal_0,
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 20.0,
                                  ),
                                  hintText: 'Type in your message here...',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: CustomColors.anxiousTeal_0,
                                    fontSize: 14,
                                  ),
                                ),
                                onSubmitted: (value) {
                                  final message = state.messages.last;
                                  _submitChoice(message.responseParameter!,
                                      value, false, false,
                                      userValue: true);
                                },
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                final message = state.messages.last;
                                _submitChoice(message.responseParameter!,
                                    _userInputController.text, false, false,
                                    userValue: true);
                              },
                              icon: SvgPicture.asset(
                                wakefully_resources.Resources.icons.send,
                                colorFilter: const ColorFilter.mode(
                                  CustomColors.anxiousTeal_0,
                                  BlendMode.srcIn,
                                ),
                                height: 30,
                              ),
                            ),
                          ],
                        )
                      : Container(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  final exitCode = "-1";

  _submitChoice(
      String? key, String value, bool showProcessing, bool showKeyboard,
      {bool userValue = false}) {
    if (value == exitCode) {
      return context.router.replaceAll([const HomeRoute()]);
    }

    var state = context.read<ChatBloc>().state;

    if ((state.action == "request-last-flow-block" ||
            state.showProcessing ||
            showProcessing) &&
        !showKeyboard) {
      if (state.action == "go-to-flow-block" ||
          state.action == "go-to-with-content-response") {
        //TODO: handle this better (NN related)
        var goTo = int.tryParse(value);
        if (goTo != null && (goTo == 35 || goTo == 51)) {
          context.router.push(ChatAnalyzingRoute(
              textOverride:
                  "We are rewriting your script, please give us a moment"));
        } else {
          context.router.push(ChatAnalyzingRoute());
        }
      } else {
        context.router.push(ChatAnalyzingRoute());
      }
    }
    _userInputController.clear();
    context
        .read<ChatBloc>()
        .add(ChatEvent.choiceMade(key, value, userValue, showKeyboard));
  }
}

class _SystemMessage extends StatelessWidget {
  const _SystemMessage({
    required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    var messageStyle = GoogleFonts.lora(
        fontSize: 22,
        color: CustomColors.anxiousTeal_0,
        fontWeight: FontWeight.w500);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: StyledText(
                  text: message.content ?? "",
                  tags: addGlobalTags(messageStyle),
                  textAlign: TextAlign.right,
                  style: messageStyle),
            ),
          ],
        ),
        message.subContent?.isNotEmpty ?? false
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(message.subContent!,
                          textAlign: TextAlign.right,
                          style: GoogleFonts.lora(
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            color: CustomColors.calmGrey_0,
                          )),
                    ),
                  ),
                ],
              )
            : Container(),
      ],
    );
  }
}

class _Choice extends StatelessWidget {
  final Choice _choice;
  final Message _message;
  final Function(
          String? key, String value, bool showProcessing, bool showKeyboard)?
      _choiceCallback;

  const _Choice(this._choice, this._message, this._choiceCallback);

  @override
  Widget build(BuildContext context) {
    var selected = _choice.value == _message.selectedChoice;
    return SizedBox(
      width: 236,
      child: InkWell(
        onTap: () {
          _choiceCallback == null || _message.disableChoices
              ? null
              : _choiceCallback!(_message.responseParameter, _choice.value,
                  _choice.showProcessing, _choice.showKeyboard);
        },
        child: _ChoiceView(
            value: _choice.name,
            selected: selected,
            disabled: _message.disableChoices),
      ),
    );
  }
}

class _ChoiceView extends StatelessWidget {
  final bool selected;
  final bool disabled;

  const _ChoiceView({
    required String value,
    required this.selected,
    required this.disabled,
  }) : _value = value;

  final String _value;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color:
                selected ? CustomColors.anxiousTeal_0 : CustomColors.darkBlue,
            border: Border.all(
                color: selected ? CustomColors.anxiousTeal_0 : _getColor(),
                width: 1.5),
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
            child: Text(
              _value,
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: selected ? CustomColors.darkBlue : _getColor(),
              ),
            )));
  }

  Color _getColor() {
    return disabled ? CustomColors.gray7 : CustomColors.anxiousTeal_0;
  }
}
