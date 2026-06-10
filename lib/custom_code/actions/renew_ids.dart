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

Future renewIds() async {
  final recipe = FFAppState().RecipeSelect;
  if (recipe == null) return;

  for (int i = 0; i < recipe.products.length; i++) {
    recipe.products[i].id = i + 1;
  }

  for (int i = 0; i < recipe.cookingSteps.length; i++) {
    recipe.cookingSteps[i].queueId = i + 1;
  }

  FFAppState().removeFromRecipeList(
    FFAppState().RecipeList.firstWhere(
          (r) => r.id == recipe.id,
        ),
  );
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
