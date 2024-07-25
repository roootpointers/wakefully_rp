import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:injectable/injectable.dart';

import 'authentication/authentication_repository.dart';

Dio configureDio(AuthenticationRepository authenticationRepository,
    {String? environment, required String urlBase}) {
  Dio dio = Dio(BaseOptions(baseUrl: urlBase));

  if (environment == Environment.dev || environment == "local") {
    // dio.interceptors
    //     .add(PrettyDioLogger(requestBody: true, responseBody: true));
  }

  initAdapter(environment!, dio);

  dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
    var token = await authenticationRepository.getIdToken();
    if (token == null) return handler.next(options);

    options.headers[HttpHeaders.authorizationHeader] = "Bearer $token";
    return handler.next(options);
  }));

  return dio;
}

void initAdapter(String environment, Dio dio) {
  if (environment == Environment.dev || environment == "local") {
    dio.httpClientAdapter = IOHttpClientAdapter(createHttpClient: () {
      final HttpClient client =
          HttpClient(context: SecurityContext(withTrustedRoots: false));
      client.badCertificateCallback = (_, __, ___) => true;
      return client;
    });
  } else if (environment == Environment.prod) {
    //TODO: certificate pinning
    dio.httpClientAdapter = IOHttpClientAdapter(createHttpClient: () {
      final HttpClient client =
          HttpClient(context: SecurityContext(withTrustedRoots: false));
      client.badCertificateCallback = (_, __, ___) => true;
      return client;
    });
  }
}
