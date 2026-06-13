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

Future updateStep(StepStruct step, int? queueId, String? desc, String? tip,
    int? timer, String? base64) async {
  final steps = FFAppState().RecipeSelect.cookingSteps;
  final index = steps.indexWhere((s) => s.queueId == step.queueId);

  if (queueId != null) step.queueId = queueId;
  if (desc != null) step.desc = desc;
  if (tip != null) step.tip = tip;
  if (timer != null) step.timer = timer;
  if (base64 != null) step.pictureBase64 = base64;

  if (index != -1) {
    steps[index] = step;
  } else {
    steps.add(step);
  }

  FFAppState().update(() {
    FFAppState().RecipeSelect = RecipeStruct();
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
