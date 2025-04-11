import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/pod/prefs/prefs_pod.dart';
import 'core/widget/app.dart';

void main() async {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details); // コンソールにも出す
    debugPrint('⚠️ FlutterError: ${details.exception}');
    debugPrintStack(stackTrace: details.stack);
  };

  final sp = await SharedPreferences.getInstance();
  runApp(
    ProviderScope(
      overrides: [prefsPod.overrideWithValue(sp)],
      child: const App(),
    ),
  );
}
