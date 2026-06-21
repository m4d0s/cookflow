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

Future printStruct(Structs struct) async {
  switch (struct) {
    case Structs.dbproduct:
      print('ProductDB Select ${FFAppState().ProductSelect}');
      print('ProductDB ${FFAppState().ProductDB}');
      break;
    case Structs.product:
      print('Product Select ${FFAppState().ProductSelect}');
      print('Products of RecipeSelect ${FFAppState().RecipeSelect.products}');
      break;
    case Structs.step:
      print('Steps of RecipeSelect ${FFAppState().RecipeSelect.cookingSteps}');
      break;
    case Structs.shop:
      print('Shop Select ${FFAppState().BuySelect}');
      print('Shop List ${FFAppState().BuyList}');
      break;
    default:
      print('Recipe Select ${FFAppState().RecipeSelect}');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
