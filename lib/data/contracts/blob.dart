import 'package:freezed_annotation/freezed_annotation.dart';

part 'blob.freezed.dart';
part 'blob.g.dart';

@freezed
class Blob with _$Blob {
  factory Blob(String title, String content, DateTime created) = _Blob;

  factory Blob.fromJson(Map<String, dynamic> json) => _$BlobFromJson(json);
}
