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

FulltagStruct getRecipeTags(RecipeStruct recipe) {
  final tagc = FFAppState()
      .CategoryList
      .firstWhere((e) => e.category == recipe.foodType);
  final tagh =
      FFAppState().HardList.firstWhere((e) => e.difficult == recipe.hardType);

  return FulltagStruct(foodname: tagc.name, hardname: tagh.name);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
