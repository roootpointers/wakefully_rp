import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/data/contracts/version_info.dart';
import 'package:wakefully_analyzer/data/wakefully_api.dart';

abstract class AppDataSource {
  Future<VersionInfo> getVersionInfo();
}

@LazySingleton(as: AppDataSource)
class AppDataSourceImpl implements AppDataSource {
  final WakefullyApi _wakefullyApi;

  AppDataSourceImpl(this._wakefullyApi);

  @override
  Future<VersionInfo> getVersionInfo() {
    return _wakefullyApi.getVersionInfo();
  }
}
