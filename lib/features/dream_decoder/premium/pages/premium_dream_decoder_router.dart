import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/chat/bloc/chat_bloc.dart';
import '../../../../dependency_container.dart';

@RoutePage(name: "PremiumDreamDecoderRouter")
class PremiumDreamDecoderPage extends AutoRouter implements AutoRouteWrapper {
  const PremiumDreamDecoderPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<ChatBloc>(), child: Scaffold(body: this));
  }
}
