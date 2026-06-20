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

import 'package:file_picker/file_picker.dart';
import 'dart:io';

Future<String?> importBackup(bool share) async {
  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: [
      share
          ? FFAppConstants.AppExtentionRecipe
          : FFAppConstants.AppExtentionBackup
    ],
  );

  if (result == null || result.files.single.path == null) {
    return 'Не предоставлен файл, операция импорта отменена';
  }

  try {
    final backup =
        jsonDecode(await File(result.files.single.path!).readAsString());

    if (backup['version'] != FFAppConstants.BackupVersion)
      return 'Версия бэкапа устарела';

    if (backup['share'] == false)
      FFAppState().update(() {
        FFAppState().DarkMode = AppTheme.values[backup['darkMode']];
        FFAppState().AutoNutrition = backup['autoMode'];
        FFAppState().LastProductId = backup['lastprodid'];
        FFAppState().LastRecipeId = backup['lastrecid'];
        FFAppState().LastStepId = backup['laststepid'];
        FFAppState().LastBuyId = backup['lastbuyid'];
        FFAppState().DailySelect =
            DailyPlanStruct.fromSerializableMap(backup['dailysel']);
        FFAppState().ProductSelect =
            ProductStruct.fromSerializableMap(backup['productsel']);
        FFAppState().RecipeSelect =
            RecipeStruct.fromSerializableMap(backup['recipesel']);

        FFAppState().BuySelect =
            ShopItemStruct.fromSerializableMap(backup['buysel']);

        FFAppState().DailyGoal =
            NutritionsStruct.fromSerializableMap(backup['nutritions']);

        FFAppState().PeopleStat =
            PeopleParamStruct.fromSerializableMap(backup['properties']);

        FFAppState().DailyList = (backup['dailyList'] as List)
            .map((e) => DailyPlanStruct.fromSerializableMap(e))
            .toList();

        FFAppState().ProductDB = (backup['productList'] as List)
            .map((e) => ProductStruct.fromSerializableMap(e))
            .toList();

        FFAppState().BuyList = (backup['buyList'] as List)
            .map((e) => ShopItemStruct.fromSerializableMap(e))
            .toList();

        FFAppState().RecipeList = (backup['recipeList'] as List)
            .map((e) => RecipeStruct.fromSerializableMap(e))
            .toList();
      });
    else
      FFAppState().update(() {
        FFAppState().RecipeSelect =
            RecipeStruct.fromSerializableMap(backup['recipesel']);
      });
  } catch (e) {
    return 'Произошла ошибка при импорте: ${e}';
  }

  return '';
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
