import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_dream_request.freezed.dart';
part 'create_dream_request.g.dart';

@freezed
class CreateDreamRequest with _$CreateDreamRequest {
  factory CreateDreamRequest(String? journeyId) = _CreateDreamRequest;

  factory CreateDreamRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateDreamRequestFromJson(json);
}
