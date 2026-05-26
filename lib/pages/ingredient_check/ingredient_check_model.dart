import '/components/button/button_widget.dart';
import '/components/ingredient_checker/ingredient_checker_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ingredient_check_widget.dart' show IngredientCheckWidget;
import 'package:flutter/material.dart';

class IngredientCheckModel extends FlutterFlowModel<IngredientCheckWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for IngredientItem2.
  late IngredientCheckerModel ingredientItem2Model1;
  // Model for IngredientItem2.
  late IngredientCheckerModel ingredientItem2Model2;
  // Model for IngredientItem2.
  late IngredientCheckerModel ingredientItem2Model3;
  // Model for IngredientItem2.
  late IngredientCheckerModel ingredientItem2Model4;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    ingredientItem2Model1 =
        createModel(context, () => IngredientCheckerModel());
    ingredientItem2Model2 =
        createModel(context, () => IngredientCheckerModel());
    ingredientItem2Model3 =
        createModel(context, () => IngredientCheckerModel());
    ingredientItem2Model4 =
        createModel(context, () => IngredientCheckerModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    ingredientItem2Model1.dispose();
    ingredientItem2Model2.dispose();
    ingredientItem2Model3.dispose();
    ingredientItem2Model4.dispose();
    buttonModel.dispose();
  }
}
