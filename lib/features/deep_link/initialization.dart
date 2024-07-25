import 'package:flutter/foundation.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';

Future initializeBranch() async {
  await FlutterBranchSdk.init(
      enableLogging: kDebugMode, disableTracking: !kDebugMode);
}
