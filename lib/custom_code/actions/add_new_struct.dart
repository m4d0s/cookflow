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
  int id;
  int qid;

  switch (struct) {
    case Structs.product:
      final recipe = FFAppState().RecipeSelect;
      id = FFAppState().LastProductId + 1;

      if (recipe.products.length < FFAppConstants.StructLimit) {
        recipe.products.add(
          ProductStruct(
              id: id,
              quantity: FoodQuantityStruct(),
              nutrition100g: NutritionsStruct(),
              category: ProductCategoryStruct()),
        );
        FFAppState().LastProductId += 1;
      }
      break;

    case Structs.shop:
      id = FFAppState().LastBuyId + 1;
      FFAppState().LastBuyId += 1;
      final shop = ShopItemStruct(
          bought: false,
          create: DateTime.now(),
          id: id,
          quantity: FoodQuantityStruct());

      FFAppState().BuySelect = shop;
      //FFAppState().addToBuyList(shop);

      break;
    case Structs.dbproduct:
      id = FFAppState().LastProductId + 1;
      FFAppState().addToProductDB(
        ProductStruct(
            id: id,
            quantity: FoodQuantityStruct(),
            nutrition100g: NutritionsStruct(),
            category: ProductCategoryStruct()),
      );
      FFAppState().LastProductId += 1;
      break;
    case Structs.step:
      final recipe = FFAppState().RecipeSelect;
      id = FFAppState().LastProductId + 1;
      qid = recipe.cookingSteps.length + 1;

      if (recipe.cookingSteps.length < FFAppConstants.StructLimit) {
        recipe.cookingSteps.add(
          StepStruct(queueId: qid, id: id),
        );
      }
      FFAppState().LastStepId += 1;
      break;

    default:
      id = FFAppState().LastRecipeId + 1;
      FFAppState().LastRecipeId += 1;
      final recipe = RecipeStruct(
        id: id,
        cookingSteps: [],
        products: [],
        nutritions: NutritionsStruct(),
      );

      // FFAppState().addToRecipeList(recipe);
      FFAppState().RecipeSelect = recipe;
  }

  FFAppState().update(() {});
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
