import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakefully_analyzer/features/dream_decoder/basic/bloc/basic_dream_decoder_bloc.dart';

import '../../../../dependency_container.dart';

@RoutePage(name: "BasicDreamDecoderRouter")
class BasicDreamDecoderPage extends AutoRouter implements AutoRouteWrapper {
  const BasicDreamDecoderPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<BasicDreamDecoderBloc>()
          ..add(const BasicDreamDecoderEvent.started()),
        child: Scaffold(body: this));
  }
}
