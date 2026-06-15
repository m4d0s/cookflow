// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:package_info_plus/package_info_plus.dart';

Future<String> getAppVersion() async {
  final info = await PackageInfo.fromPlatform();

  final str1 = '${info.appName} - готовим просто и удобно!';
  final str2 = 'Название пакета: ${info.packageName}';
  final str3 = 'Версия пакета: ${info.version} (${info.buildNumber})';
  final str4 = 'Подпись: ${info.buildSignature}';
  return '${str1}\n${str2}\n${str3}\n${str4}\n';
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
