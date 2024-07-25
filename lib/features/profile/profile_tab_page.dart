import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../dependency_container.dart';
import 'bloc/profile_bloc.dart';

@RoutePage(name: "ProfileRouter")
class ProfileTabPage extends AutoRouter implements AutoRouteWrapper {
  const ProfileTabPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<ProfileBloc>()..add(const ProfileEvent.started()),
        child: this);
  }
}
