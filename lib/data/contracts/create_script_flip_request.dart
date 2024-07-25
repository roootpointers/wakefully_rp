import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_script_flip_request.freezed.dart';
part 'create_script_flip_request.g.dart';

@freezed
class CreateScriptFlipRequest with _$CreateScriptFlipRequest {
  factory CreateScriptFlipRequest(String content, String journeyId) =
      _CreateScriptFlipRequest;

  factory CreateScriptFlipRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateScriptFlipRequestFromJson(json);
}
