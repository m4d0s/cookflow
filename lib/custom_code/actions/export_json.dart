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
import 'package:share_plus/share_plus.dart';

Future<void> exportJson() async {
  final timestamp =
      '${DateTime.now().year}${DateTime.now().month}${DateTime.now().day}${DateTime.now().hour}${DateTime.now().minute}${DateTime.now().second}';
  try {
    final jsonString = jsonEncode({
      'version': FFAppConstants.BackupVersion,
      'darkMode': FFAppState().DarkMode,
      'autoMode': FFAppState().AutoNutrition,
      'nutritions': FFAppState().DailyGoal.toSerializableMap(),
      'lastprodid': FFAppState().LastProductId,
      'lastrecid': FFAppState().LastRecipeId,
      'dailysel': FFAppState().DailySelect.toSerializableMap(),
      'dailyList':
          FFAppState().DailyList.map((e) => e.toSerializableMap()).toList(),
      'recipeList':
          FFAppState().RecipeList.map((e) => e.toSerializableMap()).toList(),
      'recipesel': FFAppState().RecipeSelect.toSerializableMap(),
      'properties': FFAppState().PeopleStat.toSerializableMap(),
    });

    final tempDir = await getTemporaryDirectory();

    final file = File(
      '${tempDir.path}/cookflow_backup_${timestamp}.json',
    );

    await file.writeAsString(jsonString);

    await Share.shareXFiles(
      [XFile(file.path)],
      text: 'CookFlow_Backup',
      subject: 'CookFlow Backup',
    );
  } catch (e) {
    debugPrint('Export error: $e');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
