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
      FFAppState().RecipeSelect.cookingSteps.removeWhere(
            (s) => s.queueId == id,
          );
      break;
    case Structs.product:
      FFAppState().RecipeSelect.products.removeWhere(
            (p) => p.id == id,
          );
      break;
    default: //Structs.recipe
      FFAppState().removeFromRecipeList(
        FFAppState().RecipeList.firstWhere(
              (r) => r.id == id,
            ),
      );
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
