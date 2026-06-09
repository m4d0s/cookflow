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

Future addEmptyDaily() async {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);

  final exists = FFAppState().DailyList.any((plan) {
    final planDate = plan.date;
    if (planDate == null) return false;
    final planDay = DateTime(planDate.year, planDate.month, planDate.day);
    return planDay.isAtSameMomentAs(today);
  });

  if (!exists) {
    FFAppState().addToDailyList(
      DailyPlanStruct(
        date: today,
      ),
    );
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
