import 'package:flutter/widgets.dart';

class BlobInfo {
  String id;
  Gradient gradient;
  double size;

  Shader get shader => gradient.createShader(Rect.fromLTRB(0, 0, size, size));

  BlobInfo({
    required this.gradient,
    required this.size,
    required this.id,
  });
}
