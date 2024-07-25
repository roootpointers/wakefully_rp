import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:wakefully_analyzer/core/authentication/authentication_repository.dart';
import 'package:wakefully_analyzer/core/dio_config.dart';
import 'package:wakefully_analyzer/environments.dart';

@module
abstract class RegisterModule {
  @local
  @Named("ApiUrlBase")
  String get localApiUrl => "https://10.0.2.2:7045/";

  @dev
  @Named("ApiUrlBase")
  String get devApiUrl => "https://wakefully-dev.azurewebsites.net/";

  @prod
  @Named("ApiUrlBase")
  String get prodApiUrl => "https://wakefully-api.azurewebsites.net/";

  @local
  @lazySingleton
  Dio getLocalDio(AuthenticationRepository authenticationRepository,
          @Named("ApiUrlBase") String url) =>
      configureDio(authenticationRepository,
          environment: "local", urlBase: url);

  @dev
  @lazySingleton
  Dio getDevDio(AuthenticationRepository authenticationRepository,
          @Named("ApiUrlBase") String url) =>
      configureDio(authenticationRepository,
          environment: Environment.dev, urlBase: url);

  @prod
  @lazySingleton
  Dio getProdDio(AuthenticationRepository authenticationRepository,
          @Named("ApiUrlBase") String url) =>
      configureDio(authenticationRepository,
          environment: Environment.prod, urlBase: url);

  @preResolve
  Future<PackageInfo> get packageInfo => PackageInfo.fromPlatform();

  @singleton
  Logger get logger => Logger(
          printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 80,
        colors: true,
        printEmojis: true,
        printTime: false,
      ));

  @Order(-1)
  @local
  @dev
  @Named("RevenueCatGoogleApiKey")
  String get revenueCatGoogleApiKeyDev => "goog_aqGftmZMRpIkUHOKnfXlyfWuVSB";
  @Order(-1)
  @local
  @dev
  @Named("RevenueCatIosApiKey")
  String get revenueCatIosApiKeyDev => "appl_SfTdHhEQglJaZtYfJaROqdAOCKH";

  @Order(-1)
  @prod
  @Named("RevenueCatGoogleApiKey")
  String get revenueCatGoogleApiKey => "goog_uLzbgvhbAogdorVpGtxCSAeMIVC";
  @Order(-1)
  @prod
  @Named("RevenueCatIosApiKey")
  String get revenueCatIosApiKey => "appl_ypQUDsGfRxUpFDEONJbWAfvLGXS";
}
