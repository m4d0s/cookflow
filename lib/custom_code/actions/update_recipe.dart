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

/// update ids for steps and ingridients in recipe count from 1, delete recipe
/// by recipe id in AppState RecipeList and add updated one
Future updateRecipe(bool? fav) async {
  final recipe = FFAppState().RecipeSelect;

  if (fav != null) recipe.isFavorite = fav;

  final existingRecipes =
      FFAppState().RecipeList.where((r) => r.id == recipe.id);

  if (existingRecipes.isNotEmpty) {
    FFAppState().removeFromRecipeList(
      existingRecipes.first,
    );
  }

  for (final product in recipe.products) {
    final measure = product.quantity.count * product.quantity.multiplier;
    final callories =
        product.nutrition100g.calories / product.quantity.divider * measure;
    final protein =
        product.nutrition100g.protein / product.quantity.divider * measure;
    final fats =
        product.nutrition100g.fats / product.quantity.divider * measure;
    final carbs =
        product.nutrition100g.carbs / product.quantity.divider * measure;

    recipe.nutritions = NutritionsStruct(
        calories: callories / recipe.portions,
        protein: protein / recipe.portions,
        fats: fats / recipe.portions,
        carbs: carbs / recipe.portions);
  }

  FFAppState().addToRecipeList(recipe);

  FFAppState().update(() {
    FFAppState().RecipeSelect = RecipeStruct();
  });
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
