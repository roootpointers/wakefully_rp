import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/legacy/widgets/wakefully_progress_indicator.dart';

// ignore: must_be_immutable
class ActionOverlay extends StatelessWidget {
  ActionOverlay({super.key, required this.child})
      : _isLoadingNotifier = ValueNotifier(false);

  final ValueNotifier<bool> _isLoadingNotifier;
  final Widget child;
  late String? _message;

  static ActionOverlay of(BuildContext context) {
    return context.findAncestorWidgetOfExactType<ActionOverlay>()!;
  }

  void show({String? message}) {
    _message = message;
    _isLoadingNotifier.value = true;
  }

  void hide() {
    _isLoadingNotifier.value = false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isLoadingNotifier,
      child: child,
      builder: (context, isLoading, child) {
        return Stack(
          children: [
            child!,
            if (isLoading)
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                child: const Opacity(
                  opacity: 0.6,
                  child: ModalBarrier(dismissible: false, color: Colors.black),
                ),
              ),
            if (isLoading)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: WakefullyProgressIndicator(),
                  ),
                  _message?.isNotEmpty ?? false
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(_message!,
                              style: GoogleFonts.openSans(
                                  fontSize: 17, color: Colors.white)),
                        )
                      : Container(),
                ],
              ),
          ],
        );
      },
    );
  }
}
