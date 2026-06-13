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

Future addNewStruct(Structs struct) async {
  final recipe = FFAppState().RecipeSelect;

  int id;

  switch (struct) {
    case Structs.product:
      id = recipe.products.isEmpty
          ? 1
          : recipe.products.map((r) => r.id).reduce((a, b) => a > b ? a : b) +
              1;

      if (recipe.products.length < FFAppConstants.StructLimit) {
        recipe.products.add(
          ProductStruct(
            id: id,
            quantity: FoodQuantityStruct(),
            nutrition100g: NutritionsStruct(),
          ),
        );
      }
      break;

    case Structs.step:
      id = recipe.cookingSteps.isEmpty
          ? 1
          : recipe.cookingSteps
                  .map((r) => r.queueId)
                  .reduce((a, b) => a > b ? a : b) +
              1;

      if (recipe.cookingSteps.length < FFAppConstants.StructLimit) {
        recipe.cookingSteps.add(
          StepStruct(queueId: id),
        );
      }
      break;

    default:
      id = FFAppState().RecipeList.isEmpty
          ? 1
          : FFAppState()
                  .RecipeList
                  .map((r) => r.id)
                  .reduce((a, b) => a > b ? a : b) +
              1;

      FFAppState().addToRecipeList(
        RecipeStruct(
          id: id,
          cookingSteps: [],
          products: [],
          nutritions: NutritionsStruct(),
        ),
      );

      FFAppState().RecipeSelect = FFAppState().RecipeList.last;
  }

  FFAppState().update(() {});
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
