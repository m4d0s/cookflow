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

Future recipeToShopItem() async {
  final recipe = FFAppState().RecipeSelect;

  for (final product in recipe.products) {
    final existing = FFAppState().BuyList.indexWhere((e) =>
        (e.name.toLowerCase() == product.name.toLowerCase()) &
        (e.quantity.quantity.toLowerCase() ==
            product.quantity.quantity
                .toLowerCase())); // e.productId == product.id);
    if (existing != -1) {
      FFAppState().BuyList[existing].quantity.count += product.quantity.count;
    } else {
      final id = FFAppState().LastBuyId + 1;
      FFAppState().LastBuyId += 1;
      final newbuy = ShopItemStruct(
          id: id,
          bought: false,
          create: DateTime.now(),
          name: product.name,
          productId: product.id,
          quantity: product.quantity);
      FFAppState().update(() {
        FFAppState().addToBuyList(newbuy);
      });
    }
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
