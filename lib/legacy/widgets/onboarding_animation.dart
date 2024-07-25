import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';

import '../../core/app/bloc/app_bloc.dart';
import '../../resources.dart';

@RoutePage()
class OnBoardingAnimation extends StatefulWidget {
  const OnBoardingAnimation({super.key});

  @override
  State<OnBoardingAnimation> createState() => _OnBoardingAnimationState();
}

class _OnBoardingAnimationState extends State<OnBoardingAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late VideoPlayerController _controller;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = Tween(begin: 1.0, end: 0.0).animate(_animationController);

    _controller = VideoPlayerController.asset(Resources.videos.onboarding)
      ..initialize().then((value) {
        _controller.addListener(() {
          setState(() {
            if (!_controller.value.isPlaying &&
                _controller.value.isInitialized &&
                (_controller.value.duration == _controller.value.position)) {
              _animationController.forward().whenComplete(() {
                context.read<AppBloc>().add(const AppEvent.onboarded());
                context.router.replaceAll(const [HomeRoute()]);
              });
            }
          });
        });
      })
      ..play();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: Container(),
          ),
          backgroundColor: const Color(0xFF1E1E2E),
          body: FadeTransition(
            opacity: _animation,
            child: Center(
              child: FractionallySizedBox(
                widthFactor: 1.05,
                heightFactor: 1,
                child: Center(
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: 70,
          ),
        ),
      );
}
