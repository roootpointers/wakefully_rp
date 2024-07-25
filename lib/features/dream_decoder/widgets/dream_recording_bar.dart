import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../legacy/custom_colors.dart';
import '../../../resources.dart';

class DreamRecordingBar extends StatelessWidget {
  final bool speechAvailable;
  final VoidCallback startListening;
  final VoidCallback stopListening;
  final VoidCallback toggleEditing;
  final VoidCallback send;
  final VoidCallback delete;
  final bool showSendButton;
  final bool recording;

  const DreamRecordingBar({
    super.key,
    this.speechAvailable = false,
    required this.startListening,
    required this.showSendButton,
    required this.recording,
    required this.stopListening,
    required this.toggleEditing,
    required this.send,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        showSendButton
            ? _SendBar(send: send, delete: delete, toggleEditing: toggleEditing)
            : _RecordBar(
                speechAvailable: speechAvailable,
                startListening: startListening,
                stopListening: stopListening,
                toggleEditing: toggleEditing,
                recording: recording,
              ),
      ],
    );
  }
}

class _RecordBar extends StatelessWidget {
  final bool speechAvailable;
  final bool recording;
  final VoidCallback startListening;
  final VoidCallback stopListening;
  final VoidCallback toggleEditing;

  const _RecordBar(
      {required this.speechAvailable,
      required this.recording,
      required this.startListening,
      required this.stopListening,
      required this.toggleEditing});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 50, width: 50),
        recording
            ? _PrimaryButton(
                icon: Resources.icons.stop,
                onPressed: stopListening,
                animate: recording,
                backgroundColor: Colors.red,
              )
            : _RecordButton(
                speechAvailable: speechAvailable,
                onPressed: speechAvailable ? startListening : toggleEditing,
                animate: recording),
        speechAvailable && !recording
            ? _TextEntryButton(
                onPressed: toggleEditing,
              )
            : const SizedBox(
                width: 50,
                height: 50,
              ),
      ],
    );
  }
}

class _SendBar extends StatelessWidget {
  final VoidCallback delete;
  final VoidCallback send;
  final VoidCallback toggleEditing;

  const _SendBar(
      {required this.send, required this.delete, required this.toggleEditing});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _SecondaryButton(
          onPressed: delete,
          icon: Resources.icons.delete,
          iconSize: 16,
        ),
        _PrimaryButton(
          onPressed: send,
          icon: Resources.icons.send,
          iconSize: 52,
        ),
        _TextEntryButton(
          onPressed: toggleEditing,
        ),
      ],
    );
  }
}

class _RecordButton extends StatelessWidget {
  final bool speechAvailable;
  final VoidCallback onPressed;
  final bool animate;

  const _RecordButton(
      {required this.speechAvailable,
      required this.onPressed,
      this.animate = false});

  @override
  Widget build(BuildContext context) {
    var icon =
        speechAvailable ? Resources.icons.microphone : Resources.icons.keyboard;
    var iconSize = speechAvailable ? 32.0 : 18.0;

    return _PrimaryButton(
      icon: icon,
      onPressed: onPressed,
      animate: animate,
      iconSize: iconSize,
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;
  final bool animate;
  final double iconSize;
  final Color backgroundColor;

  const _PrimaryButton(
      {required this.icon,
      required this.onPressed,
      this.animate = false,
      this.backgroundColor = CustomColors.anxiousTeal_0,
      this.iconSize = 32});

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      animate: animate,
      child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            heroTag: "primary",
            backgroundColor: backgroundColor,
            onPressed: onPressed,
            child: SvgPicture.asset(
              icon,
              height: iconSize,
              width: iconSize,
              colorFilter: const ColorFilter.mode(
                CustomColors.white,
                BlendMode.srcIn,
              ),
            ),
          )),
    );
  }
}

class SpeechButton extends StatelessWidget {
  final VoidCallback startListening;
  const SpeechButton({super.key, required this.startListening});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: "speech",
      backgroundColor: CustomColors.anxiousTeal_0,
      onPressed: startListening,
      child: SvgPicture.asset(
        Resources.icons.microphone,
        height: 32,
        width: 32,
        colorFilter: const ColorFilter.mode(
          CustomColors.white,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}

class _SecondaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final double iconSize;

  const _SecondaryButton(
      {required this.onPressed, required this.icon, this.iconSize = 14});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: CustomColors.anxiousTeal_0, width: 2),
        ),
        child: FloatingActionButton(
          heroTag: "secondary",
          elevation: 0,
          backgroundColor: Colors.transparent,
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              icon,
              height: iconSize,
              width: iconSize,
              colorFilter: const ColorFilter.mode(
                CustomColors.anxiousTeal_0,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TextEntryButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _TextEntryButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return _SecondaryButton(
        onPressed: onPressed, icon: Resources.icons.keyboard);
  }
}
