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
  try {
    final newProductCategoryStruct = ProductCategoryStruct(
      name: FFAppConstants.CustomProductCategory,
    );
    final recipe = FFAppState().RecipeSelect;
    final nutritions =
        NutritionsStruct(calories: 0, protein: 0, fats: 0, carbs: 0);
    final newProduct = ProductStruct(
        id: FFAppState().LastProductId,
        category: newProductCategoryStruct,
        nutrition100g: nutritions,
        inBase: false);
    final newStep = StepStruct(
      queueId: recipe.cookingSteps.length + 1,
      id: FFAppState().LastStepId,
    );
    final newShop = ShopItemStruct(
      create: DateTime.now(),
      done: DateTime.now(),
      bought: false,
      id: FFAppState().LastBuyId,
      quantity: FoodQuantityStruct(),
      productId: -1,
    );

    switch (struct) {
      case Structs.product:
        final products =
            List<ProductStruct>.from(FFAppState().RecipeSelect.products);
        print(
            'List state: ${FFAppState().RecipeSelect.products.runtimeType}, ${FFAppState().RecipeSelect.cookingSteps.runtimeType}');
        if (recipe.products.length < FFAppConstants.StructLimit) {
          FFAppState().LastProductId += 1;
          print(newProduct);
          print(FFAppState().RecipeSelect.products);
          products.add(newProduct);
          FFAppState().RecipeSelect.products = products;
        }
        print('Last productID = ${FFAppState().LastProductId}');
        break;

      case Structs.step:
        final steps =
            List<StepStruct>.from(FFAppState().RecipeSelect.cookingSteps);
        print(
            'List state: ${FFAppState().RecipeSelect.products.runtimeType}, ${FFAppState().RecipeSelect.cookingSteps.runtimeType}');
        if (recipe.cookingSteps.length < FFAppConstants.StructLimit) {
          FFAppState().LastStepId += 1;
          print(newStep);
          print(FFAppState().RecipeSelect.cookingSteps);
          steps.add(newStep);
          FFAppState().RecipeSelect.cookingSteps = steps;
        }
        print('Last stepID = ${FFAppState().LastStepId}');
        break;

      case Structs.shop:
        FFAppState().LastBuyId += 1;

        FFAppState().BuySelect = newShop;
        print(FFAppState().BuySelect);
        print('Last shopD = ${FFAppState().LastBuyId}');
        break;

      case Structs.dbproduct:
        FFAppState().LastProductId += 1;

        newProduct.inBase = true;
        FFAppState().ProductSelect = newProduct;
        print(FFAppState().ProductSelect);
        print('Last DB productID = ${FFAppState().LastBuyId}');
        break;

      default: //Structs.recipe
        FFAppState().LastRecipeId += 1;

        FFAppState().RecipeSelect = RecipeStruct(
            id: FFAppState().LastRecipeId,
            createTime: DateTime.now(),
            cookingSteps: <StepStruct>[],
            products: <ProductStruct>[],
            nutritions: nutritions,
            isFavorite: false,
            rating: 0);
        print(FFAppState().RecipeSelect);
        print('Last recipeID = ${FFAppState().LastRecipeId}');
        print(
            'List state: ${FFAppState().RecipeSelect.products.runtimeType}, ${FFAppState().RecipeSelect.cookingSteps.runtimeType}');
    }
  } catch (e) {
    print(e);
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
