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

Future measureTDEE() async {
  final people = FFAppState().PeopleStat;
  final am = people.sex == HumanSex.male ? 5 : -161;
  final bmr = 10 * people.weight + 6.25 * people.height - 5 * people.age + am;

  double tk = 1;
  double ak = 1;

  // tk * ak = 0.96~2.28

  switch (people.activity) {
    case MealAction.lessaverage:
      ak = 1.2;
      break;
    case MealAction.low:
      ak = 1.375;
      break;
    case MealAction.moreaverage:
      ak = 1.725;
      break;
    case MealAction.high:
      ak = 1.9;
      break;
    default:
      ak = 1.55; //average
  }

  switch (people.target) {
    case MealTarget.extraloss:
      tk = 0.8;
      break;
    case MealTarget.lessloss:
      tk = 0.85;
      break;
    case MealTarget.lessget:
      tk = 1.1;
      break;
    case MealTarget.extraget:
      tk = 1.2;
      break;
    default:
      tk = 1;
  }

  // 1.6 ~ 2.0 g per kg mass
  double proteingap = 0.2;
  double proteinpermass = 1.6 + proteingap * tk * ak;
  double proteinpergramm = 4;

  // 0.8 ~ 1.0 g per kg mass
  double fatsgap = 0.1;
  double fatspermass = 0.8 + fatsgap * tk * ak;
  double fatspergramm = 9;

  double carbspergramm = 4;

  double tdee = bmr * ak * tk;

  double protein = people.weight * proteinpermass;
  double fats = people.weight * fatspermass;

  double proteinCalories = protein * proteinpergramm;
  double fatsCalories = fats * fatspergramm;

  double remainingCalories = tdee - (proteinCalories + fatsCalories);

  double carbs = remainingCalories / carbspergramm;

  FFAppState().DailyGoal.calories = tdee;
  FFAppState().DailyGoal.protein = protein;
  FFAppState().DailyGoal.fats = fats;
  FFAppState().DailyGoal.carbs = carbs;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
