import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../legacy/custom_colors.dart';

class AnalyzingView extends StatefulWidget {
  final String text;

  const AnalyzingView(this.text, {super.key});

  @override
  State<AnalyzingView> createState() => _AnalyzingViewState();
}

class _AnalyzingViewState extends State<AnalyzingView> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/videos/ai_thinking.mp4")
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.pause();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WakelockPlus.enable();
    return Stack(
      children: [
        Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          padding: const EdgeInsets.symmetric(
            vertical: 60,
          ),
          child: Transform.scale(
            scale: 1.1,
            child: VideoPlayer(_controller),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 80,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                ScaleAnimatedText(
                  widget.text,
                  textAlign: TextAlign.center,
                  textStyle: GoogleFonts.lora(
                    color: CustomColors.anxiousTeal_0,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TyperAnimatedText(
                  ". . .",
                  textStyle: GoogleFonts.lora(
                    color: CustomColors.anxiousTeal_0,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
