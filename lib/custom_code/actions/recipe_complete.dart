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

bool recipeComplete() {
  final recipe = FFAppState().RecipeSelect;
  bool decide = recipe.hasName() &
      recipe.hasInfo() &
      (recipe.portions > 0) &
      (recipe.cookTime > 0);

  for (final step in recipe.cookingSteps) {
    decide = decide & (step.hasDesc());
  }

  for (final product in recipe.products) {
    decide = decide &
        (product.hasName() &
            product.quantity.hasQuantity() &
            (product.quantity.count > 0));
  }

  return decide;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
