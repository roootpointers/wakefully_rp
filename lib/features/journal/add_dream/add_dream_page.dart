import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../../legacy/custom_colors.dart';
import '../../../resources.dart';

@RoutePage()
class AddDreamPage extends StatefulWidget {
  const AddDreamPage({super.key});

  @override
  State<AddDreamPage> createState() => _AddDreamPageState();
}

class _AddDreamPageState extends State<AddDreamPage> {
  late TextEditingController _textEditingController;
  late FocusNode _dreamTextNode;
  final SpeechToText _speech = SpeechToText();
  late bool _speechSupported = false,
      _recording = false,
      _listening = false,
      _editingText = false;
  String? _dreamText;
  late String _currentWords, _nextWords;

  @override
  void initState() {
    super.initState();
    _initText();
    _maybeEnableSpeech();
  }

  void _maybeEnableSpeech() {
    _speechSupported = Platform.isIOS;

    if (_speechSupported) {
      _initSpeech();
    }
  }

  void _initText() {
    _textEditingController = TextEditingController()
      ..addListener(() {
        setState(() {
          _dreamText = _textEditingController.text;
        });
      });

    _dreamTextNode = FocusNode()
      ..addListener(() {
        setState(() {
          _editingText = _dreamTextNode.hasFocus;
        });
      });
  }

  void _initSpeech() {
    _speech.initialize(
      onError: (error) => print("Error: $error"),
      onStatus: _speechStatusListener,
    );
    setState(() {});
  }

  void _toggleListening() async {
    if (_listening) {
      _stopListening();
    } else {
      _startListening();
    }
  }

  void _startListening() async {
    await _speech.stop();
    await Future.delayed(const Duration(milliseconds: 50));
    await _speech.listen(
      listenFor: const Duration(minutes: 10),
      listenOptions: SpeechListenOptions(
        partialResults: true,
        cancelOnError: false,
        listenMode: ListenMode.dictation,
      ),
      onResult: _onSpeechResult,
    );
    setState(() {
      _listening = _speech.isListening;
    });
  }

  void _speechStatusListener(String status) async {
    if (status == "done" && _listening) {
      setState(() {
        _currentWords += " $_nextWords";
        _dreamText = _currentWords;
        _nextWords = "";
      });
      _startListening();
    }
  }

  void _onSpeechResult(result) {
    setState(() {
      _nextWords = result.recognizedWords;
      _dreamText = "$_currentWords $_nextWords";
    });
  }

  void _stopListening() async {
    await _speech.stop();
    setState(() {
      _listening = _speech.isListening;
    });
  }

  void _toggleEditing() {
    setState(() {
      _editingText = !_editingText;
    });

    if (_editingText) {
      _dreamTextNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final showInstructions =
        ((_dreamText == null || _dreamText!.isEmpty) && !_editingText);
    final readyForSubmit =
        _dreamText != null && _dreamText!.isNotEmpty && !_editingText;

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: showInstructions
                    ? const _Instructions()
                    : SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              _editingText
                                  ? TextField(
                                      focusNode: _dreamTextNode,
                                      cursorColor: CustomColors.anxiousTeal_0,
                                      decoration: const InputDecoration(
                                          focusColor:
                                              CustomColors.anxiousTeal_0),
                                      style: GoogleFonts.openSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: CustomColors.white,
                                      ),
                                      controller: _textEditingController,
                                      keyboardType: TextInputType.text,
                                      maxLines: 10,
                                    )
                                  : GestureDetector(
                                      onTap: _toggleEditing,
                                      child: Text(_dreamText ?? "",
                                          style: GoogleFonts.openSans(
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600)),
                                    )
                            ],
                          ),
                        ),
                      ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _speechSupported
                      ? Row(
                          children: [
                            const SizedBox(
                              height: 48,
                              width: 48,
                            ),
                            const SizedBox(width: 16),
                            _speechSupported
                                ? FloatingActionButton(
                                    backgroundColor: const Color(0x8252C4D1),
                                    onPressed: _toggleListening,
                                    child: SvgPicture.asset(_listening
                                        ? Resources.icons.stop
                                        : Resources.icons.microphone),
                                  )
                                : Container(),
                            const SizedBox(width: 16),
                          ],
                        )
                      : Container(),
                  FloatingActionButton(
                    backgroundColor: const Color(0x8252C4D1),
                    mini: _speechSupported,
                    onPressed: _toggleEditing,
                    child: SvgPicture.asset(readyForSubmit
                        ? Resources.icons.send
                        : Resources.icons.keyboard),
                  ),
                ],
              ),
              const SizedBox(height: 44),
            ],
          ),
        ),
      ),
    );
  }
}

class _Instructions extends StatelessWidget {
  const _Instructions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SvgPicture.asset("assets/images/cloud_dots.svg"),
        const SizedBox(height: 16),
        Text("Record or type a description of your dream",
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
                color: const Color(0x8252C4D1),
                fontSize: 24,
                fontWeight: FontWeight.w600)),
        const SizedBox(height: 22),
        const Spacer(),
      ],
    );
  }
}
