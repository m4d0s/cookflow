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

Future addNewStruct(Structs struct) async {
  final newProductCategoryStruct = ProductCategoryStruct(
    name: FFAppConstants.CustomProductCategory,
  );
  final recipe = FFAppState().RecipeSelect;

  switch (struct) {
    case Structs.product:
      if (recipe.products.length < FFAppConstants.StructLimit) {
        FFAppState().LastProductId += 1;

        FFAppState().RecipeSelect.products.add(ProductStruct(
              id: FFAppState().LastProductId,
              category: newProductCategoryStruct,
            ));
      }

      break;

    case Structs.step:
      FFAppState().LastStepId += 1;

      if (recipe.cookingSteps.length < FFAppConstants.StructLimit) {
        FFAppState().RecipeSelect.cookingSteps.add(
              StepStruct(
                queueId: recipe.cookingSteps.length + 1,
                id: FFAppState().LastStepId,
              ),
            );
      }

      break;

    case Structs.shop:
      FFAppState().LastBuyId += 1;

      FFAppState().BuySelect = ShopItemStruct(
        create: DateTime.now(),
        done: DateTime.now(),
        bought: false,
        id: FFAppState().LastBuyId,
      );

      break;

    case Structs.dbproduct:
      FFAppState().LastProductId += 1;

      FFAppState().ProductSelect = ProductStruct(
        id: FFAppState().LastProductId,
      );

      break;

    default: //Structs.recipe
      FFAppState().LastRecipeId += 1;

      FFAppState().RecipeSelect = RecipeStruct(
        id: FFAppState().LastRecipeId,
        createTime: DateTime.now(),
      );
  }

  FFAppState().update(() {});
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
