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
  try {
    print(FFAppState().RecipeSelect.cookingSteps);
    final index = FFAppState()
        .RecipeSelect
        .cookingSteps
        .indexWhere((s) => s.id == step.id);

    if (queueId != null) step.queueId = queueId;
    if (desc != null) step.desc = desc;
    if (tip != null) step.tip = tip;
    if (timer != null) step.timer = timer;
    if (base64 != null) step.pictureBase64 = base64;

    FFAppState().update(() {
      if (index != -1) {
        FFAppState().RecipeSelect.cookingSteps[index] = step;
      } else {
        FFAppState().RecipeSelect.cookingSteps.add(step);
        print(FFAppState().RecipeSelect.cookingSteps.last);
      }
    });
  } catch (e) {
    print(e);
    return 'Произошла следующая ошибка: ${e}';
  }
  return '';
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
