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

String exportBackup() {
  final backup = {
    'version': FFAppConstants.BackupVersion,
    'darkMode': FFAppState().DarkMode,
    'autoMode': FFAppState().AutoNutrition,
    'dailyGoal': FFAppState().DailyGoal.toSerializableMap(),
    'allDailyPlans':
        FFAppState().DailyList.map((e) => e.toSerializableMap()).toList(),
    'recipeList':
        FFAppState().RecipeList.map((e) => e.toSerializableMap()).toList(),
    'humanParams': FFAppState().PeopleStat.toSerializableMap()
  };

  return jsonEncode(backup);
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
