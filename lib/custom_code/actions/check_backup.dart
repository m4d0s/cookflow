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

import 'dart:convert';

Future<bool> checkBackup(String jsonString) async {
  final backup = jsonDecode(jsonString);
  final version = FFAppConstants.BackupVersion;

  return backup['version'] == version;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
