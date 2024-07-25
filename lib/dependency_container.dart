import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_container.config.dart';

final sl = GetIt.instance;

@InjectableInit()
Future configureDependencies(String? environment) async =>
    await sl.init(environment: environment);
