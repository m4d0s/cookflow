import '/components/category_chip/category_chip_widget.dart';
import '/components/recipe_list_item/recipe_list_item_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'recipes_widget.dart' show RecipesWidget;
import 'package:flutter/material.dart';

class RecipesModel extends FlutterFlowModel<RecipesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel1;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel2;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel3;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel4;
  // Model for RecipeCard.
  late RecipeListItemModel recipeCardModel1;
  // Model for RecipeCard.
  late RecipeListItemModel recipeCardModel2;
  // Model for RecipeCard.
  late RecipeListItemModel recipeCardModel3;
  // Model for RecipeCard.
  late RecipeListItemModel recipeCardModel4;
  // Model for RecipeCard.
  late RecipeListItemModel recipeCardModel5;
  // Model for RecipeCard.
  late RecipeListItemModel recipeCardModel6;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    categoryChipModel1 = createModel(context, () => CategoryChipModel());
    categoryChipModel2 = createModel(context, () => CategoryChipModel());
    categoryChipModel3 = createModel(context, () => CategoryChipModel());
    categoryChipModel4 = createModel(context, () => CategoryChipModel());
    recipeCardModel1 = createModel(context, () => RecipeListItemModel());
    recipeCardModel2 = createModel(context, () => RecipeListItemModel());
    recipeCardModel3 = createModel(context, () => RecipeListItemModel());
    recipeCardModel4 = createModel(context, () => RecipeListItemModel());
    recipeCardModel5 = createModel(context, () => RecipeListItemModel());
    recipeCardModel6 = createModel(context, () => RecipeListItemModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    categoryChipModel1.dispose();
    categoryChipModel2.dispose();
    categoryChipModel3.dispose();
    categoryChipModel4.dispose();
    recipeCardModel1.dispose();
    recipeCardModel2.dispose();
    recipeCardModel3.dispose();
    recipeCardModel4.dispose();
    recipeCardModel5.dispose();
    recipeCardModel6.dispose();
  }
}
