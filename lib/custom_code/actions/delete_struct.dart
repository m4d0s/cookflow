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

Future deleteStruct(int id, Structs struct) async {
  switch (struct) {
    case Structs.step:
      final index = FFAppState().RecipeSelect.cookingSteps.indexWhere(
            (r) => r.queueId == id,
          );
      FFAppState().RecipeSelect.cookingSteps.removeAt(index);
      break;
    case Structs.product:
      final index = FFAppState().RecipeSelect.products.indexWhere(
            (r) => r.id == id,
          );
      FFAppState().RecipeSelect.products.removeAt(index);
      break;
    default: //Structs.recipe
      final index = FFAppState().RecipeList.indexWhere(
            (r) => r.id == id,
          );
      FFAppState().removeAtIndexFromRecipeList(index);
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
