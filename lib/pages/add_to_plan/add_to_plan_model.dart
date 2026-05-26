import '/components/add_to_plan_item/add_to_plan_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_to_plan_widget.dart' show AddToPlanWidget;
import 'package:flutter/material.dart';

class AddToPlanModel extends FlutterFlowModel<AddToPlanWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for RecipeCard2.
  late AddToPlanItemModel recipeCard2Model1;
  // Model for RecipeCard2.
  late AddToPlanItemModel recipeCard2Model2;
  // Model for RecipeCard2.
  late AddToPlanItemModel recipeCard2Model3;
  // Model for RecipeCard2.
  late AddToPlanItemModel recipeCard2Model4;

  @override
  void initState(BuildContext context) {
    recipeCard2Model1 = createModel(context, () => AddToPlanItemModel());
    recipeCard2Model2 = createModel(context, () => AddToPlanItemModel());
    recipeCard2Model3 = createModel(context, () => AddToPlanItemModel());
    recipeCard2Model4 = createModel(context, () => AddToPlanItemModel());
  }

  @override
  void dispose() {
    recipeCard2Model1.dispose();
    recipeCard2Model2.dispose();
    recipeCard2Model3.dispose();
    recipeCard2Model4.dispose();
  }
}
