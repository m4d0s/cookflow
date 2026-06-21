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

Future<String> updateProduct(int id, bool check, bool db) async {
  try {
    final currentProduct = ProductStruct.fromSerializableMap(
        FFAppState().ProductSelect.toSerializableMap());

    final qindex = FFAppState()
        .QuantityList
        .indexWhere((q) => q.quantity == currentProduct.quantity.quantity);

    if (qindex != -1) {
      currentProduct.quantity = FoodQuantityStruct(
          altquantity: FFAppState().QuantityList[qindex].altquantity,
          count: currentProduct.quantity.count,
          divider: currentProduct.quantity.divider,
          multiplier: FFAppState().QuantityList[qindex].multiplier,
          quantity: FFAppState().QuantityList[qindex].quantity);
    }

    final categoryfind = FFAppState().ProductCategoryList.firstWhere(
        (e) => e.name == FFAppState().ProductSelect.category.name,
        orElse: () =>
            ProductCategoryStruct(name: FFAppConstants.CustomProductCategory));
    currentProduct.category.name = categoryfind.name;

    int existing = db
        ? FFAppState().ProductDB.indexWhere((p) => p.id == id)
        : FFAppState().RecipeSelect.products.indexWhere((p) => p.id == id);

    FFAppState().update(() {
      if (existing != -1) {
        if (db) {
          FFAppState().ProductDB[existing] = currentProduct;
          print(FFAppState().ProductDB[existing]);
        } else {
          FFAppState().RecipeSelect.products[existing] = currentProduct;
          print(FFAppState().RecipeSelect.products[existing]);
        }
      } else {
        if (db)
          FFAppState().addToProductDB(currentProduct);
        else
          FFAppState().RecipeSelect.products.add(currentProduct);
      }
      if (existing == -1)
        print(db
            ? FFAppState().ProductDB.last
            : FFAppState().RecipeSelect.products.last);
    });
  } catch (e) {
    print(e);
    return 'Произошла следующая ошибка: ${e}';
  }
  return '';
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
