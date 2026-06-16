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

Future updateProduct(
    ProductStruct product,
    String quantity,
    String name,
    double kall,
    double protein,
    double fats,
    double carbs,
    double count,
    int id,
    bool check) async {
  final products = FFAppState().RecipeSelect.products;
  final index = products.indexWhere((p) => p.id == product.id);

  final qq_index =
      FFAppState().QuantityList.indexWhere((q) => q.quantity == quantity);
  final qq = FoodQuantityStruct(
      count: count,
      divider: FFAppState().QuantityList[qq_index].divider,
      altquantity: FFAppState().QuantityList[qq_index].altquantity,
      multiplier: FFAppState().QuantityList[qq_index].multiplier,
      quantity: quantity);

  product.quantity = qq;
  product.name = name;
  product.nutrition100g.calories = kall;
  product.nutrition100g.protein = protein;
  product.nutrition100g.fats = fats;
  product.nutrition100g.carbs = carbs;
  product.isChecked = check;
  product.id = id;

  if (index != -1) {
    products[index] = product;
  } else {
    products.add(product);
  }

  FFAppState().update(() {
    //FFAppState().RecipeSelect = RecipeStruct();
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
