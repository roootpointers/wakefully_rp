import 'package:flutter/widgets.dart';

class ExpandedSection extends StatefulWidget {
  final Duration duration;
  final Widget child;
  final bool expand;

  const ExpandedSection({
    super.key,
    this.expand = false,
    required this.child,
    required this.duration,
  });

  @override
  State<ExpandedSection> createState() => _ExpandedSectionState();
}

class _ExpandedSectionState extends State<ExpandedSection>
    with SingleTickerProviderStateMixin {
  late final AnimationController expandController;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _setUpAnimations();
    _runExpandCheck();
  }

  void _setUpAnimations() {
    expandController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
  }

  void _runExpandCheck() {
    if (widget.expand) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void didUpdateWidget(ExpandedSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 1.0,
      sizeFactor: animation,
      child: widget.child,
    );
  }
}
