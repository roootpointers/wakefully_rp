import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/data/contracts/create_dream_request.dart';
import 'package:wakefully_analyzer/data/contracts/dream_details.dart';

import '../../../data/contracts/dream_type.dart';
import '../../../data/wakefully_api.dart';
import '../contracts/dream.dart';

abstract class DreamsDataSource {
  Future<List<DreamType>> getDreamTypes();
  Future<List<Dream>> getDreams();
  Future<Dream?> getLatestDream();
  Future saveDream(String journeyId);
  Future<DreamDetails> getDreamDetails(String dreamId);
}

@Injectable(as: DreamsDataSource)
class DreamsDataSourceImpl implements DreamsDataSource {
  final WakefullyApi _wakefullyApi;

  DreamsDataSourceImpl(this._wakefullyApi);

  @override
  Future<List<DreamType>> getDreamTypes() => _wakefullyApi.getDreamTypes();

  @override
  Future<List<Dream>> getDreams() => _wakefullyApi.getDreams();

  @override
  Future<Dream?> getLatestDream() => _wakefullyApi.getLatestDream();

  @override
  Future saveDream(String journeyId) =>
      _wakefullyApi.saveDream(CreateDreamRequest(journeyId));

  @override
  Future<DreamDetails> getDreamDetails(String dreamId) =>
      _wakefullyApi.getDreamDetails(dreamId);
}
