import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

FoodDifficultyStruct? foodDifficultByEnum(
  Hardness difficult,
  List<FoodDifficultyStruct>? hardlist,
) {
  // find in datatype list first item by enum
  if (hardlist == null) return null;
  return hardlist.firstWhere(
    (item) => item.difficult == difficult,
    orElse: () => new FoodDifficultyStruct(),
  );
}

FoodCategoryStruct? foodCategoryByEnum(
  Food? category,
  List<FoodCategoryStruct>? categoryList,
) {
  // find in list by enum
  if (category == null || categoryList == null) return null;

  return categoryList.firstWhere(
    (foodCategory) => foodCategory.category == category,
    orElse: () => new FoodCategoryStruct(),
  );
}

MealEntryStruct mealEntryDefine(RecipeStruct meal) {
  DateTime now = DateTime.now();
  return MealEntryStruct(meal: meal, date: now);
}

StepStruct? findStepByID(
  List<StepStruct>? allSteps,
  int? queueid,
) {
// find step by queue_id
  return allSteps?.firstWhere((step) => step.queueId == queueid,
      orElse: null); // firstWhere((step) => step.queue_id == queueid);
}

double procentCalc(
  double c1,
  double c2,
) {
// first / second
  return (c1 / c2); // * 100;
}
