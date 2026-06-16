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

Future moveStepUp(StepStruct step) async {
  final steps = FFAppState().RecipeSelect.cookingSteps;

  final currentIndex = steps.indexWhere((s) => s.queueId == step.queueId);
  final previousIndex = steps.indexWhere((s) => s.queueId == step.queueId - 1);

  if (previousIndex > -1) {
    //FFAppState().RecipeSelect.cookingSteps[currentIndex].queueId -= 1;
    //FFAppState().RecipeSelect.cookingSteps[previousIndex].queueId += 1;
    final prev = FFAppState().RecipeSelect.cookingSteps[currentIndex];
    final cur = FFAppState().RecipeSelect.cookingSteps[previousIndex];

    FFAppState().update(() {
      FFAppState().RecipeSelect.cookingSteps[currentIndex] = cur;
      FFAppState().RecipeSelect.cookingSteps[previousIndex] = prev;
    });
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
