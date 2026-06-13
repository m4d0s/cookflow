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

Future<void> importJson(String jsonContent) async {
  final backup = jsonDecode(jsonContent);

  FFAppState().update(() {
    FFAppState().DarkMode = backup['darkMode'];
    FFAppState().AutoNutrition = backup['autoMode'];

    FFAppState().DailyGoal =
        NutritionsStruct.fromSerializableMap(backup['dailyGoal']);

    FFAppState().PeopleStat =
        PeopleParamStruct.fromSerializableMap(backup['humanParams']);

    FFAppState().DailyList = (backup['allDailyPlans'] as List)
        .map((e) => DailyPlanStruct.fromSerializableMap(e))
        .toList();

    FFAppState().RecipeList = (backup['recipeList'] as List)
        .map((e) => RecipeStruct.fromSerializableMap(e))
        .toList();
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
