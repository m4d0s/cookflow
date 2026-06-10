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

int getNextId(RecipeStruct recipe, Structs struct) {
  int returned = -1;
  switch (struct) {
    case Structs.product:
      returned = !recipe.hasProducts()
          ? 1
          : recipe.products.map((r) => r.id).reduce((a, b) => a > b ? a : b) +
              1;
      break;
    case Structs.step:
      returned = !recipe.hasCookingSteps()
          ? 1
          : recipe.cookingSteps
                  .map((r) => r.queueId)
                  .reduce((a, b) => a > b ? a : b) +
              1;
      break;
    default: //Structs.recipe
      returned = FFAppState().RecipeList.isEmpty
          ? 1
          : FFAppState()
                  .RecipeList
                  .map((r) => r.id)
                  .reduce((a, b) => a > b ? a : b) +
              1;
  }
  return returned;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
