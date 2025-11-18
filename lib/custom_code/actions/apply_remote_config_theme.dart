// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:firebase_remote_config/firebase_remote_config.dart';

Future<void> applyRemoteConfigTheme(BuildContext context) async {
  final rc = FirebaseRemoteConfig.instance;
  await rc.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 5),
    minimumFetchInterval: Duration.zero,
  ));
  await rc.fetchAndActivate();

  final v = rc.getString('theme_mode'); // 'light' | 'dark' | 'system'
  if (v == 'dark') {
    setDarkModeSetting(context, ThemeMode.dark);
  } else if (v == 'light') {
    setDarkModeSetting(context, ThemeMode.light);
  } else {
    setDarkModeSetting(context, ThemeMode.system);
  }
}
