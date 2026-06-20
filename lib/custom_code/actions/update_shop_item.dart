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

Future updateShopItem(bool clear, bool check) async {
  final item = ShopItemStruct.fromSerializableMap(
      FFAppState().BuySelect.toSerializableMap());

  item.bought = check;
  if (check) item.done = DateTime.now();

  int existing = FFAppState().BuyList.indexWhere((e) =>
      (e.id == item.id) ||
      (e.name.toLowerCase() == item.name.toLowerCase() &&
          e.quantity.quantity.toLowerCase() ==
              item.quantity.quantity.toLowerCase()));

  for (final i in FFAppState().BuyList) {
    if ((i.name.toLowerCase() == item.name.toLowerCase()) &
        (i.quantity.quantity.toLowerCase() ==
            item.quantity.quantity.toLowerCase())) {
      existing = FFAppState().BuyList.indexWhere((e) => e.id == i.id);
      break;
    }
  }

  FFAppState().update(() {
    if (existing != -1) {
      FFAppState().BuyList[existing] = item;
    } else {
      FFAppState().LastBuyId += 1;
      item.id = FFAppState().LastBuyId;
      FFAppState().addToBuyList(item);
    }
  });

  // for (final i in manualList) {
  //   if ((i.name.toLowerCase() == item.name.toLowerCase()) &
  //       (i.quantity.quantity.toLowerCase ==
  //           item.quantity.quantity.toLowerCase)) {
  //     inmanual =
  //         FFAppState().BuyList.indexWhere((element) => element.id == i.id);
  //     break;
  //   }
  // }

  // FFAppState().update(() {
  //   if (existing != -1)
  //     FFAppState().BuyList[existing] = item;
  //   else if (inmanual != -1) {
  //     FFAppState().BuyList[inmanual].quantity.count +=
  //         FFAppState().BuySelect.quantity.count;
  //   } else
  //     FFAppState().addToBuyList(item);
  //   if (clear) FFAppState().BuySelect = ShopItemStruct();
  // });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
