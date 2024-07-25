import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:wakefully_analyzer/core/app/widgets/title_bar.dart';
import 'package:wakefully_analyzer/features/dream_decoder/widgets/dream_recording_bar.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../../app_router.gr.dart';
import '../../../../legacy/custom_colors.dart';
import '../../core/authentication/bloc/authentication_bloc.dart';

@RoutePage()
class PersonalityQuizAddDreamPage extends StatefulWidget {
  const PersonalityQuizAddDreamPage({super.key});

  @override
  State<PersonalityQuizAddDreamPage> createState() =>
      _PersonalityQuizAddDreamPageState();
}

class _PersonalityQuizAddDreamPageState
    extends State<PersonalityQuizAddDreamPage> {
  final stt.SpeechToText _speechToText = stt.SpeechToText();
  bool _dreamRecorded = false;
  bool _isEditing = false;
  bool _isInitialEdit = false;
  late FocusNode _textNode;
  String _text = "";
  final String _date = DateFormat.yMMMMd().format(DateTime.now());
  late TextEditingController _textEditingController;

  late bool _speechAvailable;
  late bool _speechEnabled = false;
  late String _lastWords = "";
  late String _currentWords = "";

  @override
  void initState() {
    super.initState();

    _textEditingController = TextEditingController()
      ..addListener(() {
        setState(() {
          _text = _textEditingController.text;
          _dreamRecorded = _text.isNotEmpty;
        });
      });

    _textNode = FocusNode()
      ..addListener(() {
        setState(() {
          _isEditing = _textNode.hasFocus;
          if (!_textNode.hasFocus) _isInitialEdit = false;
        });
      });

    _setupSpeech();
  }

  void _setupSpeech() {
    if (Platform.isIOS) {
      _speechAvailable = true;
      _initSpeech();
    } else {
      _speechAvailable = false;
    }
  }

  void _initSpeech() async {
    await _speechToText.initialize(
        onError: errorListener, onStatus: statusListener);
    setState(() {});
  }

  void errorListener(SpeechRecognitionError error) async {
    debugPrint(error.errorMsg.toString());
    if (_speechEnabled) {
      setState(() {
        _lastWords += " $_currentWords";
        _text = _lastWords;
        _currentWords = "";
      });
      await _startListening();
    }
  }

  void statusListener(String status) async {
    debugPrint("status $status");
    if (status == "done" && _speechEnabled) {
      setState(() {
        _lastWords += " $_currentWords";
        _text = _lastWords;
        _currentWords = "";
      });
      await _startListening();
    }
  }

  void _send() {
    var firstName =
        context.read<AuthenticationBloc>().authenticatedUser!.firstName;

    context.router.push(ChatRouter(
        idOrSlug: "personality_quiz",
        flowBlockId: 37,
        parameters: {
          "first_name": firstName,
          "JPQ_dreamText": _text,
        },
        resultsTitle: "Personality Quiz"));
  }

  void _delete() {
    setState(() {
      _isEditing = false;
      _dreamRecorded = false;
      _text = "";
      _lastWords = "";
      _currentWords = "";
    });
  }

  Future _startListening() async {
    await _speechToText.stop();
    await Future.delayed(const Duration(milliseconds: 50));
    await _speechToText.listen(
        listenFor: const Duration(minutes: 10),
        onResult: _onSpeechResult,
        listenOptions: stt.SpeechListenOptions(
            cancelOnError: false,
            partialResults: true,
            listenMode: stt.ListenMode.dictation));
    setState(() {
      _speechEnabled = true;
    });
  }

  Future _stopListening() async {
    setState(() {
      _speechEnabled = false;
      _dreamRecorded = _text.isNotEmpty;
    });
    await _speechToText.stop();
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      debugPrint("result ${result.recognizedWords}");
      _currentWords = result.recognizedWords;
      _text = "$_lastWords $_currentWords";
    });
  }

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }

  void _toggleEditing() {
    setState(() {
      _isEditing = !_isEditing;
    });

    if (_isEditing) {
      _textNode.requestFocus();
      _textEditingController.text = _text;
    }
  }

  @override
  Widget build(BuildContext context) {
    WakelockPlus.enable();
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(builder: (context, constraints) {
            final showInstructions = _text.isEmpty && !_isEditing;

            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      const SizedBox(height: 32),
                      TitleBar(
                        child: Text(
                            _isEditing && _text.isNotEmpty && !_isInitialEdit
                                ? "Edit Dream"
                                : "Add A Dream",
                            style: GoogleFonts.lora(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: CustomColors.anxiousTeal_0,
                            )),
                      ),
                      showInstructions
                          ? Text(_date,
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: CustomColors.white,
                              ))
                          : Container(),
                      showInstructions ? const Spacer() : Container(),
                      showInstructions
                          ? InkWell(
                              onTap: _toggleEditing,
                              child: const _Instructions())
                          : Container(),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: _isEditing
                            ? TextField(
                                focusNode: _textNode,
                                cursorColor: CustomColors.anxiousTeal_0,
                                decoration: const InputDecoration(
                                    focusColor: CustomColors.anxiousTeal_0),
                                style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: CustomColors.white,
                                ),
                                controller: _textEditingController,
                                keyboardType: TextInputType.text,
                                maxLines: 10,
                              )
                            : Text(_text,
                                style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: CustomColors.white,
                                )),
                      ),
                      const Spacer(),
                      DreamRecordingBar(
                        send: _send,
                        delete: _delete,
                        speechAvailable: _speechAvailable,
                        showSendButton: _dreamRecorded,
                        recording: _speechEnabled,
                        startListening: _startListening,
                        stopListening: _stopListening,
                        toggleEditing: _toggleEditing,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class _Instructions extends StatelessWidget {
  const _Instructions();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Describe your dream in a few short sentences",
            style: GoogleFonts.lora(
              fontSize: 28,
              color: CustomColors.anxiousTeal_0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
