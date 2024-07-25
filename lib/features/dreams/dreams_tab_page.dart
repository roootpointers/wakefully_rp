import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "DreamsRouter")
class DreamsTabPage extends AutoRouter implements AutoRouteWrapper {
  const DreamsTabPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}
