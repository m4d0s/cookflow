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
      List<int> indexList = List.generate(
          FFAppState().RecipeSelect.cookingSteps.length, (index) => index);
      FFAppState().RecipeSelect.cookingSteps.removeAt(index);
      for (final index in indexList) {
        if (FFAppState().RecipeSelect.cookingSteps[index].queueId > id) {
          FFAppState().RecipeSelect.cookingSteps[index].queueId -= 1;
        }
      }
      break;
    case Structs.product:
      final index = FFAppState().RecipeSelect.products.indexWhere(
            (r) => r.id == id,
          );
      FFAppState().RecipeSelect.products.removeAt(index);
      break;
    case Structs.shop:
      final index = FFAppState().BuyList.indexWhere(
            (r) => r.id == id,
          );
      FFAppState().BuyList.removeAt(index);
      break;
    case Structs.dbproduct:
      final index = FFAppState().ProductDB.indexWhere(
            (r) => r.id == id,
          );
      FFAppState().ProductDB.removeAt(index);
      break;
    default: //Structs.recipe
      final index = FFAppState().RecipeList.indexWhere(
            (r) => r.id == id,
          );
      FFAppState().update(() {
        FFAppState().removeAtIndexFromRecipeList(index);
      });
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
