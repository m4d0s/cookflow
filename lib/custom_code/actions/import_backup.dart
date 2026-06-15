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

import 'package:file_picker/file_picker.dart';
import 'dart:io';

Future<bool> importBackup() async {
  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['json'],
  );

  if (result == null || result.files.single.path == null) {
    return false;
  }

  try {
    final backup =
        jsonDecode(await File(result.files.single.path!).readAsString());

    if (backup['version'] != FFAppConstants.BackupVersion) return false;

    FFAppState().update(() {
      FFAppState().DarkMode = backup['darkMode'];
      FFAppState().AutoNutrition = backup['autoMode'];
      FFAppState().LastProductId = backup['lastprodid'];
      FFAppState().LastRecipeId = backup['lastrecid'];
      FFAppState().DailySelect =
          DailyPlanStruct.fromSerializableMap(backup['dailysel']);

      FFAppState().RecipeSelect =
          RecipeStruct.fromSerializableMap(backup['recipesel']);

      FFAppState().DailyGoal =
          NutritionsStruct.fromSerializableMap(backup['nutritions']);

      FFAppState().PeopleStat =
          PeopleParamStruct.fromSerializableMap(backup['properties']);

      FFAppState().DailyList = (backup['dailyList'] as List)
          .map((e) => DailyPlanStruct.fromSerializableMap(e))
          .toList();

      FFAppState().RecipeList = (backup['recipeList'] as List)
          .map((e) => RecipeStruct.fromSerializableMap(e))
          .toList();
    });
  } catch (e) {
    return false;
  }

  return true;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
