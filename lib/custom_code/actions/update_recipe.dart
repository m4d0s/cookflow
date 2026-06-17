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
//
import 'dart:math';

Future updateRecipe(bool? fav, bool clear) async {
  final recipe = FFAppState().RecipeSelect;

  if (fav != null) recipe.isFavorite = fav;

  //final index = FFAppState().RecipeList.indexWhere((r) => r.id == recipe.id);

  final existing = FFAppState().RecipeList.indexWhere((r) => r.id == recipe.id);
  recipe.nutritions.calories = 0;
  recipe.nutritions.protein = 0;
  recipe.nutritions.fats = 0;
  recipe.nutritions.carbs = 0;

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

    recipe.nutritions.calories += callories;
    recipe.nutritions.protein += protein;
    recipe.nutritions.fats += fats;
    recipe.nutritions.carbs += carbs;
  }

  recipe.nutritions.calories = max(0, recipe.nutritions.calories);
  recipe.nutritions.protein = max(0, recipe.nutritions.protein);
  recipe.nutritions.fats = max(0, recipe.nutritions.fats);
  recipe.nutritions.carbs = max(0, recipe.nutritions.carbs);

  //if (index >= 0) FFAppState().RecipeList[index] = existing;
  //FFAppState().RecipeList.sort((a, b) => a.id.compareTo(b.id));

  FFAppState().update(() {
    if (existing != -1)
      FFAppState().RecipeList[existing] = recipe;
    else
      FFAppState().addToRecipeList(recipe);
    if (clear) FFAppState().RecipeSelect = RecipeStruct();
  });
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
