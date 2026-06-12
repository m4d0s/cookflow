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

Future addNewStruct(Structs struct, int id) async {
  switch (struct) {
    case Structs.product:
      if (FFAppConstants.StructLimit <
          FFAppState().RecipeSelect.cookingSteps.length)
        FFAppState().RecipeSelect.cookingSteps.add(StepStruct(queueId: id));
      break;
    case Structs.step:
      if (FFAppConstants.StructLimit <
          FFAppState().RecipeSelect.products.length)
        FFAppState().RecipeSelect.products.add(ProductStruct(id: id));
      break;
    default:
      FFAppState().RecipeList.add(RecipeStruct(id: id));
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
