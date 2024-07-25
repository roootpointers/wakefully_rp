import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BasicDreamDecoderDeepLinkResultsPage extends StatelessWidget {
  final String id;

  const BasicDreamDecoderDeepLinkResultsPage(
      {super.key, @PathParam("id") required this.id});

  @override
  Widget build(BuildContext context) {
    return Text("DDB $id");
  }
}
