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

Future<String> moveStepUp(StepStruct step) async {
  try {
    final steps = FFAppState().RecipeSelect.cookingSteps;
    final current = steps.indexWhere((s) => s.queueId == step.queueId);
    final previous = steps.indexWhere((s) => s.queueId == step.queueId - 1);

    if (current == -1 || previous == -1) return 'Шаги не существуют';

    final temp = steps[current].queueId;

    steps[current].queueId = steps[previous].queueId;
    steps[previous].queueId = temp;

    FFAppState().update(() {});
  } catch (e) {
    print(e);
    return 'Произошла следующая ошибка: ${e}';
  }
  return '';
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
