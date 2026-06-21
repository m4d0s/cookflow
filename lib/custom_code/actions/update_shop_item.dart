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

Future<String> updateShopItem(bool clear, bool check) async {
  try {
    print(FFAppState().BuyList);
    final item = ShopItemStruct.fromSerializableMap(
        FFAppState().BuySelect.toSerializableMap());

    if (check) {
      item.bought = !(item.bought);
      if (item.bought) item.done = DateTime.now();
    }
    final sameShop = FFAppState().BuyList.indexWhere((e) =>
        (e.name.toLowerCase() == item.name.toLowerCase() &&
            e.quantity.quantity.toLowerCase() ==
                item.quantity.quantity.toLowerCase()));
    int existing = FFAppState().BuyList.indexWhere((e) => (e.id == item.id));

    FFAppState().update(() {
      if (existing != -1) {
        FFAppState().BuyList[existing] = item;
        print(FFAppState().BuyList[existing]);
      } else if (sameShop != -1) {
        FFAppState().BuyList[sameShop].quantity.count += item.quantity.count;
        print(FFAppState().BuyList[sameShop]);
      } else {
        FFAppState().LastBuyId += 1;
        item.id = FFAppState().LastBuyId;
        FFAppState().addToBuyList(item);
        existing = FFAppState().BuyList.indexWhere((e) => e.id == item.id);
      }
    });
  } catch (e) {
    print(e);
    return 'Произошла следующая ошибка: ${e}';
  }
  return '';
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
