import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tastysoda/src/provider/shared_preferences/shared_preferences.dart';
import 'src/app.dart';

Future<void> main() async {
  runApp(ProviderScope(
    overrides: [
      sharedPreferencesProvider
          .overrideWithValue(await SharedPreferences.getInstance()),
    ],
    child: const App(),
  ));
}
