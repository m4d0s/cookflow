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

Future updateProduct(int id, bool check, bool db) async {
  final currentProduct = ProductStruct.fromSerializableMap(
      FFAppState().ProductSelect.toSerializableMap());

  final qq_index = FFAppState()
      .QuantityList
      .indexWhere((q) => q.quantity == currentProduct.quantity.quantity);
  final qq = FoodQuantityStruct(
      count: currentProduct.quantity.count,
      divider: FFAppState().ProductSelect.quantity.divider > 0
          ? FFAppState().ProductSelect.quantity.divider
          : FFAppState().QuantityList[qq_index].divider,
      altquantity: FFAppState().QuantityList[qq_index].altquantity,
      multiplier: FFAppState().QuantityList[qq_index].multiplier,
      quantity: currentProduct.quantity.quantity);

  currentProduct.quantity = qq;
  currentProduct.category = (FFAppState().ProductCategoryList.firstWhere(
      (e) => e.name == FFAppState().ProductSelect.category.name,
      orElse: () =>
          ProductCategoryStruct(name: FFAppConstants.CustomProductCategory)));

  int existing = db
      ? FFAppState().ProductDB.indexWhere((p) => p.id == id)
      : FFAppState().RecipeSelect.products.indexWhere((p) => p.id == id);

  FFAppState().update(() {
    if (existing != -1) if (db)
      FFAppState().RecipeSelect.products[existing] = currentProduct;
    else
      FFAppState().ProductDB[existing] = currentProduct;
    else {
      FFAppState().LastProductId += 1;
      currentProduct.id = FFAppState().LastRecipeId;
      if (db)
        FFAppState().RecipeSelect.products.add(currentProduct);
      else
        FFAppState().addToProductDB(currentProduct);
      existing =
          FFAppState().RecipeList.indexWhere((r) => r.id == currentProduct.id);
    }
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
