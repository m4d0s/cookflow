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

  final currentIndex = steps.indexWhere((s) => s.id == step.id);

  if (currentIndex <= 0) return;

  final currentStep = steps[currentIndex];
  final previousStep = steps[currentIndex - 1];

  // Меняем id
  //final tempId = currentStep.id;
  //currentStep.id = previousStep.id;
  //previousStep.id = tempId;

  // Меняем местами в списке
  steps[currentIndex] = previousStep;
  steps[currentIndex - 1] = currentStep;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
