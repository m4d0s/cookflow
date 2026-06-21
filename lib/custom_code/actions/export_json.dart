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

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:intl/intl.dart';
import 'package:file_picker/file_picker.dart';
import 'package:share_plus/share_plus.dart';

Future<String> exportJson(int recipeID) async {
  final today = DateTime.now();
  final timestamp =
      '${today.year}${today.month}${today.day}${today.hour}${today.minute}${today.second}';
  final isSharing = FFAppState().RecipeList.any((e) => e.id == recipeID);
  final recipeName = isSharing
      ? FFAppState()
          .RecipeList
          .firstWhere((element) => element.id == recipeID)
          .name
      : '';
  try {
    final jsonString = !isSharing
        ? jsonEncode({
            'version': FFAppConstants.BackupVersion,
            'darkMode': (FFAppState().DarkMode ?? AppTheme.system).index,
            'autoMode': FFAppState().AutoNutrition,
            'nutritions': FFAppState().DailyGoal.toSerializableMap(),
            'lastprodid': FFAppState().LastProductId,
            'lastrecid': FFAppState().LastRecipeId,
            'laststepid': FFAppState().LastStepId,
            'lastbuyid': FFAppState().LastBuyId,
            'dailysel': FFAppState().DailySelect.toSerializableMap(),
            'dailyList': FFAppState()
                .DailyList
                .map((e) => e.toSerializableMap())
                .toList(),
            'recipeList': FFAppState()
                .RecipeList
                .map((e) => e.toSerializableMap())
                .toList(),
            'productList': FFAppState()
                .ProductDB
                .map((e) => e.toSerializableMap())
                .toList(),
            'recipesel': FFAppState().RecipeSelect.toSerializableMap(),
            'productsel': FFAppState().ProductSelect.toSerializableMap(),
            'buyList':
                FFAppState().BuyList.map((e) => e.toSerializableMap()).toList(),
            'buysel': FFAppState().BuySelect.toSerializableMap(),
            'properties': FFAppState().PeopleStat.toSerializableMap(),
            'share': false
          })
        : jsonEncode({
            'version': FFAppConstants.BackupVersion,
            'recipesel': FFAppState().RecipeSelect.toSerializableMap(),
            'share': true
          });

    final tempDir = await getTemporaryDirectory();

    final file = File(
      isSharing
          ? '${tempDir.path}/${recipeName}.${FFAppConstants.AppExtentionRecipe}'
          : '${tempDir.path}/cookflow_backup_${timestamp}.${FFAppConstants.AppExtentionBackup}',
    );

    await file.writeAsString(jsonString);

    await Share.shareXFiles(
      [XFile(file.path)],
      text: isSharing
          ? 'Поделиться рецептом \"${recipeName}\"'
          : 'CookFlow Backup',
      subject: 'CookFlow Backup',
    );
    return '';
  } catch (e) {
    return 'Ошибка при экспорте:\n$e';
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
