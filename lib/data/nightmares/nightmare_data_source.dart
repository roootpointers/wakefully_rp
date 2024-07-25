import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/data/contracts/script_flip.dart';

import '../contracts/create_script_flip_request.dart';
import '../wakefully_api.dart';

abstract class NightmareDataSource {
  Future<String?> getLatestScriptFlip();
  Future createScriptFlip(String content, String journeyId);
  Future<List<ScriptFlip>> getMyScriptFlips();
}

@LazySingleton(as: NightmareDataSource)
class NightmareDataSourceImpl implements NightmareDataSource {
  final WakefullyApi _wakefullyApi;

  NightmareDataSourceImpl(this._wakefullyApi);

  @override
  Future<String?> getLatestScriptFlip() async {
    var scriptFlip = await _wakefullyApi.getLatestScriptFlip();
    if (scriptFlip != null && scriptFlip.isEmpty) {
      return null;
    } else {
      return scriptFlip;
    }
  }

  @override
  Future createScriptFlip(String content, String journeyId) {
    var request = CreateScriptFlipRequest(content, journeyId);
    return _wakefullyApi.createScriptFlip(request);
  }

  @override
  Future<List<ScriptFlip>> getMyScriptFlips() {
    return _wakefullyApi.getMyScriptFlips();
  }
}
