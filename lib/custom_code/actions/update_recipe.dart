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

Future updateRecipe(bool fav, bool share) async {
  final recipe = RecipeStruct.fromSerializableMap(
    FFAppState().RecipeSelect.toSerializableMap(),
  );

  recipe.nutritions = NutritionsStruct(
    calories: 0,
    protein: 0,
    fats: 0,
    carbs: 0,
  );

  // recipe.nutritions.calories = 0;
  // recipe.nutritions.protein = 0;
  // recipe.nutritions.fats = 0;
  // recipe.nutritions.carbs = 0;
  recipe.isFavorite = fav;

  for (final product in recipe.products) {
    if (product.quantity.divider <= 0 ||
        product.quantity.count * product.quantity.multiplier <= 0) {
      continue;
    }

    if (share) {
      FFAppState().LastProductId += 1;
      product.id = FFAppState().LastProductId;
    }

    final measure = product.quantity.count * product.quantity.multiplier;

    final callories =
        product.nutrition100g.calories / product.quantity.divider * measure;
    final protein =
        product.nutrition100g.protein / product.quantity.divider * measure;
    final fats =
        product.nutrition100g.fats / product.quantity.divider * measure;
    final carbs =
        product.nutrition100g.carbs / product.quantity.divider * measure;

    recipe.nutritions.calories += callories;
    recipe.nutritions.protein += protein;
    recipe.nutritions.fats += fats;
    recipe.nutritions.carbs += carbs;
  }

  recipe.nutritions.calories = max(0, recipe.nutritions.calories);
  recipe.nutritions.protein = max(0, recipe.nutritions.protein);
  recipe.nutritions.fats = max(0, recipe.nutritions.fats);
  recipe.nutritions.carbs = max(0, recipe.nutritions.carbs);

  if (share) {
    for (final step in recipe.cookingSteps) {
      FFAppState().LastStepId += 1;
      step.id = FFAppState().LastStepId;
    }
  }

  int existing = FFAppState().RecipeList.indexWhere((r) => r.id == recipe.id);

  FFAppState().update(() {
    if ((existing != -1) && !share)
      FFAppState().RecipeList[existing] = recipe;
    else {
      FFAppState().LastRecipeId += 1;
      recipe.id = FFAppState().LastRecipeId;
      FFAppState().addToRecipeList(recipe);
      existing = FFAppState().RecipeList.indexWhere((r) => r.id == recipe.id);
    }
    //if (clear) FFAppState().RecipeSelect = RecipeStruct();
  });
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
