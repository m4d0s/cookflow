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

Future autoDeleteShop() async {
  final today = DateTime.now();
  final lastday = DateTime(today.year, today.month, today.day - 1, today.hour,
      today.minute, today.second);
  for (final shop in FFAppState().BuyList) {
    if (shop.bought) {
      if (shop.done!.isBefore(lastday)) {
        final index =
            FFAppState().BuyList.indexWhere((element) => element.id == shop.id);
        if (index != -1) FFAppState().removeAtIndexFromBuyList(index);
      }
    }
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
