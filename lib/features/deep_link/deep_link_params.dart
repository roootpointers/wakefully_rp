import 'package:freezed_annotation/freezed_annotation.dart';

part 'deep_link_params.freezed.dart';

@freezed
class DeepLinkParams with _$DeepLinkParams {
  factory DeepLinkParams(
          int flowId, Map<String, String> parameters, int nextFlowBlockId) =
      _DeepLinkParams;
}
