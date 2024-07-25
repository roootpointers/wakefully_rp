import 'package:injectable/injectable.dart';

import '../contracts/blob.dart';
import '../contracts/flow_block.dart';
import '../wakefully_api.dart';

abstract class JourneysDataSource {
  Future<List<Blob>> getMyBlobs();
  Future<Blob?> getLatestDreamBlob();
  Future<FlowBlock> continueJourney(String id);
}

@Injectable(as: JourneysDataSource)
class JourneysDataSourceImpl implements JourneysDataSource {
  final WakefullyApi _wakefullyApi;

  JourneysDataSourceImpl(this._wakefullyApi);

  @override
  Future<List<Blob>> getMyBlobs() => _wakefullyApi.getMyBlobs();

  @override
  Future<Blob?> getLatestDreamBlob() => _wakefullyApi.getLatestDreamBlob();

  @override
  Future<FlowBlock> continueJourney(String id) =>
      _wakefullyApi.continueJourney(id);
}
