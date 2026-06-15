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

import 'package:collection/collection.dart';

Future updateDatePlan(
    DailyPlanStruct plan, bool addCup, RecipeStruct recipe) async {
  final today = DateTime.now();
  final mealIdnew = today.second + today.minute * 10 ^ 2 + today.hour * 10 ^ 4;
  final index = FFAppState().DailyList.indexWhere((e) => e.id == plan.id);

  // final existingRecipes = FFAppState().RecipeList.where((r) => r.id == plan.id);

  // if (existingRecipes.isNotEmpty) {
  //   FFAppState().removeFromRecipeList(
  //     existingRecipes.first,
  //   );
  // }

  plan.goal = NutritionsStruct();

  plan.goal.calories = FFAppState().DailyGoal.calories;
  plan.goal.protein = FFAppState().DailyGoal.protein;
  plan.goal.fats = FFAppState().DailyGoal.fats;
  plan.goal.carbs = FFAppState().DailyGoal.carbs;

  plan.done = NutritionsStruct();

  for (final recipe in plan.completedRecipes) {
    plan.done.calories += recipe.meal.nutritions.calories;
    plan.done.protein += recipe.meal.nutritions.protein;
    plan.done.fats += recipe.meal.nutritions.fats;
    plan.done.carbs += recipe.meal.nutritions.carbs;
  }

  if (addCup) plan.waterCups += 1;
  if (recipe.id > 0) {
    final newMeal = MealEntryStruct(date: today, id: mealIdnew, meal: recipe);
    plan.completedRecipes.add(newMeal);
  }

  if (index != -1) {
    FFAppState().DailyList[index] = plan;
  } else {
    FFAppState().addToDailyList(plan);
  }

  FFAppState().update(() {
    //FFAppState().RecipeSelect = RecipeStruct();
  });

  // FFAppState().addToDailyList(plan);
  // FFAppState().DailyList.sort((a, b) => b.id.compareTo(a.id));
}

// Set your action name, define your arsortBytByrtByents and return parameter,
// and then add the boilerplate code using the green button on the right!
