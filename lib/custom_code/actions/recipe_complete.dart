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

List<bool> recipeComplete() {
  final recipe = FFAppState().RecipeSelect;
  List<bool> decides = [
    recipe.hasName(),
    recipe.hasInfo(),
    (recipe.portions > 0),
    (recipe.cookTime > 0),
    (recipe.cookingSteps.length > 0),
    ((recipe.cookingSteps.length > 0)
        ? recipe.cookingSteps.every((e) => e.hasDesc())
        : true),
    (recipe.products.length > 0),
    ((recipe.products.length > 0)
        ? recipe.products.every((e) => e.hasName())
        : true),
    ((recipe.products.length > 0)
        ? recipe.products.every((e) => e.hasQuantity())
        : true),
    ((recipe.products.length > 0)
        ? recipe.products.every((e) => e.quantity.hasQuantity())
        : true),
    ((recipe.products.length > 0)
        ? recipe.products.every((e) => e.quantity.count > 0)
        : true)
  ];

  return decides;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
