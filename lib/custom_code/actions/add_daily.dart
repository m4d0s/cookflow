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

Future addDaily() async {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day, 0, 0, 0);
  final todayId = today.day + today.month * 10 ^ 4 + today.year * 10 ^ 8;

  final exists = FFAppState().DailyList.indexWhere((plan) {
    return plan.id == todayId;
  });

  if (exists == -1) {
    FFAppState().addToDailyList(DailyPlanStruct(
        date: today,
        goal: FFAppState().DailyGoal,
        completedRecipes: [],
        id: todayId,
        done: NutritionsStruct()));
    FFAppState().DailySelect = FFAppState().DailyList.last;
  } else {
    FFAppState().DailySelect = FFAppState().DailyList[exists];
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
