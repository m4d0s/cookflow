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

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:intl/intl.dart';
import 'package:file_picker/file_picker.dart';

Future<void> exportJson(String jsonString) async {
  final timestamp = DateTime.now().millisecondsSinceEpoch;
  final result = await FilePicker.platform.saveFile(
    dialogTitle: 'Сохранить рецепт',
    fileName: 'cookflow_${timestamp}.json',
    type: FileType.custom,
    allowedExtensions: ['json'],
  );

  if (result == null) {
    // пользователь отменил
    return;
  }

  final file = File(result);
  await file.writeAsString(jsonString);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
