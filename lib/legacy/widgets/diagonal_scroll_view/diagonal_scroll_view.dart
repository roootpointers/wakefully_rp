import 'package:flutter/material.dart';

import 'diagonal_scroll_view_controller.dart';

const zeroOffset = Offset.zero;

/// A [Widget] that enables the scroll in both directions, horizontal and vertical.
/// Also allows the zooming. The width and height match those of the parent.
class DiagonalScrollView extends StatefulWidget {
  /// Enable or disable the zoom animation.
  final bool enableZoom;

  /// Enable or disable the fling animation.
  final bool enableFling;

  /// The signature for callbacks that report that the position has changed.
  ///
  /// The value received is the position of the top left corner of the child's [RenderBox] (0, 0).
  /// The movement is constrained so that the (0, 0) point will not be visible.
  /// Therefore, the values emitted will be always negative or zero.
  final ValueChanged<Offset>? onScroll;

  /// The signature for callbacks that report that the scale has changed.
  ///
  /// The value received is the scale by which the child is displayed on the [RenderBox].
  final ValueChanged<double>? onScaleChanged;

  /// The minimum allowed scale.
  final double minScale;

  /// The maximum allowed scale.
  final double maxScale;

  /// The maximum scroll alongside the 'x' axis.
  ///
  /// Ignored if [maxSizeFromChild] is true.
  final double maxWidth;

  /// The maximum scroll alongside the 'y' axis.
  ///
  /// Ignored if [maxSizeFromChild] is true.
  final double maxHeight;

  /// Uses the child's size to set the maximum scroll alongside the axis.
  final bool maxSizeFromChild;

  /// The percentage of the animation's velocity used as the actual velocity.
  final double flingVelocityReduction;

  /// Called after the creation of the [Widget] state.
  final void Function(DiagonalScrollViewController)? onCreated;

  /// The child of this [Widget].
  final Widget child;

  const DiagonalScrollView({
    super.key,
    this.enableZoom = false,
    this.enableFling = true,
    this.onScroll,
    this.onScaleChanged,
    this.minScale = 0.3,
    this.maxScale = 3.0,
    this.maxWidth = double.infinity,
    this.maxHeight = double.infinity,
    this.maxSizeFromChild = true,
    this.flingVelocityReduction = 0.02,
    this.onCreated,
    required this.child,
  });

  @override
  State<DiagonalScrollView> createState() => _DiagonalScrollViewState();
}

class _DiagonalScrollViewState extends State<DiagonalScrollView>
    with TickerProviderStateMixin
    implements DiagonalScrollViewController {
  _DiagonalScrollViewState();

  double _scale = 1.0;
  double _tmpScale = 1.0;
  double _controllerScale = 1.0;
  double _controllerScaleTarget = 1.0;

  Offset _position = zeroOffset;
  Offset _controllerPosition = zeroOffset;
  Offset _controllerPositionTarget = zeroOffset;
  Offset _boxZoomOffset = zeroOffset;
  Offset _lastFocalPoint = zeroOffset;

  late final AnimationController _flingController;
  late final AnimationController _controllerController;
  Animation<Offset>? _flingAnimation;
  Animation<double>? _controllerAnimation;

  @override
  void initState() {
    super.initState();

    _flingController = AnimationController(vsync: this)
      ..addListener(_handleFlingAnimation);
    _controllerController = AnimationController(vsync: this)
      ..addListener(_handleControllerAnimation);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onCreated?.call(this);
    });
  }

  final GlobalKey _positionedKey = GlobalKey();

  RenderBox? get renderBox {
    return context.findRenderObject() as RenderBox?;
  }

  double get containerWidth {
    return renderBox?.size.width ?? 0;
  }

  double get containerHeight {
    return renderBox?.size.height ?? 0;
  }

  RenderBox? get positionedRenderBox {
    return _positionedKey.currentContext?.findRenderObject() as RenderBox?;
  }

  double get positionedWidth {
    return positionedRenderBox?.size.width ?? 0;
  }

  double get positionedHeight {
    return positionedRenderBox?.size.height ?? 0;
  }

  /// Returns the correct new scale of the child.
  double _getNewScale(double currentScale) {
    double newScale = 1.0;

    if (widget.enableZoom) {
      newScale = _tmpScale * currentScale;

      if (newScale < widget.minScale) {
        newScale = widget.minScale;
      } else if (newScale > widget.maxScale) {
        newScale = widget.maxScale;
      }
    }

    return newScale;
  }

  /// Returns the [Offset] applied to the child when zooming.
  Offset _getZoomFocusOffset(double scale) {
    final Offset boxCenter = Offset(containerWidth, containerHeight) / 2;
    final Offset focusOffset = ((boxCenter / scale) - boxCenter) * scale;

    return focusOffset;
  }

  /// Returns the constrained scale of the child.
  double _rectifyScale(double scale) {
    if (scale < widget.minScale) scale = widget.minScale;
    if (scale > widget.maxScale) scale = widget.maxScale;

    return scale;
  }

  /// Returns the constrained position of the child relative to the [RenderBox].
  Offset _rectifyChildPosition({
    required double scale,
    required Offset position,
    Offset offset = zeroOffset,
  }) {
    final containerScaled = Offset(containerWidth, containerHeight) / scale;
    double x = position.dx;
    double y = position.dy;
    double maxWidth = widget.maxWidth;
    double maxHeight = widget.maxHeight;

    if (widget.maxSizeFromChild) {
      final Size size = getChildSize();

      maxWidth = size.width;
      maxHeight = size.height;
    }

    if (x + offset.dx < containerScaled.dx - maxWidth) {
      x = containerScaled.dx - maxWidth - offset.dx;
    }
    if (y + offset.dy < containerScaled.dy - maxHeight) {
      y = containerScaled.dy - maxHeight - offset.dy;
    }

    if (x + offset.dx > 0.0) x = -offset.dx;
    if (y + offset.dy > 0.0) y = -offset.dy;

    return Offset(x, y);
  }

  void _handleScaleStart(ScaleStartDetails details) {
    _tmpScale = _scale;
    _lastFocalPoint = renderBox!.globalToLocal(details.focalPoint);
    _flingController.value = 0.0;
    _boxZoomOffset = _getZoomFocusOffset(_scale);
    _position -= _boxZoomOffset / _scale;

    if (_flingController.isAnimating) {
      _flingController.stop();
    }
  }

  void _handleScaleUpdate(ScaleUpdateDetails details) {
    final double newScale = _getNewScale(details.scale);
    final bool scaleChanged = _scale != newScale;
    final Offset focalPoint = renderBox!.globalToLocal(details.focalPoint);
    final Offset newBoxZoomOffset = _getZoomFocusOffset(newScale);
    final Offset delta = focalPoint - _lastFocalPoint;
    final Offset deltaScaled = delta / newScale;
    final Offset newPosition = _rectifyChildPosition(
      scale: newScale,
      position: _position + deltaScaled,
      offset: newBoxZoomOffset / newScale,
    );

    setState(() {
      _scale = newScale;
      _lastFocalPoint = focalPoint;
      _position = newPosition;
      _boxZoomOffset = newBoxZoomOffset;
    });

    widget.onScroll?.call(_position);
    if (scaleChanged) {
      widget.onScaleChanged?.call(_scale);
    }
  }

  void _handleScaleEnd(ScaleEndDetails details) {
    _position += _boxZoomOffset / _scale;
    _boxZoomOffset = zeroOffset;

    Offset velocity = details.velocity.pixelsPerSecond;
    if (widget.enableFling && velocity.distance > 0.0) {
      velocity *= widget.flingVelocityReduction / _scale;

      _flingAnimation = Tween<Offset>(
        begin: velocity,
        end: zeroOffset,
      ).animate(_flingController);

      _flingController.fling(velocity: 1.0);
    }
  }

  void _handleFlingAnimation() {
    if (_flingController.isAnimating &&
        _flingAnimation != null &&
        _flingAnimation!.value.distance > 0) {
      final Offset newPosition = _rectifyChildPosition(
        scale: _scale,
        position: _position + _flingAnimation!.value,
      );

      setState(() {
        _position = newPosition;
      });

      widget.onScroll?.call(_position);
    }
  }

  void _handleControllerAnimation() {
    if (_controllerController.isAnimating &&
        _controllerAnimation != null &&
        _controllerAnimation!.value > 0) {
      final double newScale = _controllerScale +
          _controllerScaleTarget * _controllerAnimation!.value;
      final Offset newPosition = _rectifyChildPosition(
        scale: newScale,
        position: _controllerPosition +
            _controllerPositionTarget * _controllerAnimation!.value,
      );
      final bool positionChanged = newPosition != _position;
      final bool scaleChanged = newScale != _scale;

      setState(() {
        _scale = newScale;
        _position = newPosition;
      });

      if (positionChanged) widget.onScroll?.call(_position);
      if (scaleChanged) widget.onScaleChanged?.call(_scale);
    }
  }

  void _handleControllerTranslation(
      Offset newPosition, double newScale, bool animate) {
    _controllerController.value = 0.0;
    if (_controllerController.isAnimating) {
      _controllerController.stop();
    }

    if (animate) {
      _controllerScale = _scale;
      _controllerPosition = _position;
      _controllerScaleTarget = newScale - _scale;
      _controllerPositionTarget = newPosition - _position;
      _controllerAnimation =
          Tween<double>(begin: 0.0, end: 1.0).animate(_controllerController);
      _controllerController.fling(velocity: 1.0);
    } else {
      setState(() {
        _scale = newScale;
        _position = newPosition;
      });
    }
  }

  @override
  void moveTo({
    required Offset location,
    double scale = 1.0,
    bool animate = false,
  }) {
    final double newScale = _rectifyScale(scale);
    final Offset newPosition = _rectifyChildPosition(
      scale: newScale,
      position: -location,
    );

    _handleControllerTranslation(newPosition, newScale, animate);
  }

  @override
  void moveBy({
    required Offset offset,
    double scale = 0.0,
    bool animate = false,
  }) {
    final double newScale = _rectifyScale(_scale + scale);
    final Offset newPosition = _rectifyChildPosition(
      scale: newScale,
      position: _position - offset,
    );

    _handleControllerTranslation(newPosition, newScale, animate);
  }

  @override
  double getScale() => _scale;

  @override
  Offset getPosition() => _position;

  @override
  Size getContainerSize() => Size(containerWidth, containerHeight);

  @override
  Size getChildSize() => Size(positionedWidth, positionedHeight);

  @override
  Widget build(BuildContext context) {
    final Offset origin = Offset(positionedWidth, positionedHeight) / -2;
    final Offset position = _position * _scale + _boxZoomOffset;

    return GestureDetector(
      onScaleStart: _handleScaleStart,
      onScaleUpdate: _handleScaleUpdate,
      onScaleEnd: _handleScaleEnd,
      child: ColoredBox(
        color: Colors.transparent,
        child: Stack(
          children: <Widget>[
            Positioned(
              key: _positionedKey,
              left: position.dx,
              top: position.dy,
              child: Transform.scale(
                origin: origin,
                scale: _scale,
                child: widget.child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
