import '/components/button/button_widget.dart';
import '/components/info_tag/info_tag_widget.dart';
import '/components/ingridient_list/ingridient_list_widget.dart';
import '/components/step_preview/step_preview_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'recipe_detail_widget.dart' show RecipeDetailWidget;
import 'package:flutter/material.dart';

class RecipeDetailModel extends FlutterFlowModel<RecipeDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for InfoTag.
  late InfoTagModel infoTagModel1;
  // Model for InfoTag.
  late InfoTagModel infoTagModel2;
  // Model for InfoTag.
  late InfoTagModel infoTagModel3;
  // Model for InfoTag.
  late InfoTagModel infoTagModel4;
  // Model for IngredientItem.
  late IngridientListModel ingredientItemModel1;
  // Model for IngredientItem.
  late IngridientListModel ingredientItemModel2;
  // Model for IngredientItem.
  late IngridientListModel ingredientItemModel3;
  // Model for IngredientItem.
  late IngridientListModel ingredientItemModel4;
  // Model for IngredientItem.
  late IngridientListModel ingredientItemModel5;
  // Model for StepPreview.
  late StepPreviewModel stepPreviewModel1;
  // Model for StepPreview.
  late StepPreviewModel stepPreviewModel2;
  // Model for StepPreview.
  late StepPreviewModel stepPreviewModel3;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    infoTagModel1 = createModel(context, () => InfoTagModel());
    infoTagModel2 = createModel(context, () => InfoTagModel());
    infoTagModel3 = createModel(context, () => InfoTagModel());
    infoTagModel4 = createModel(context, () => InfoTagModel());
    ingredientItemModel1 = createModel(context, () => IngridientListModel());
    ingredientItemModel2 = createModel(context, () => IngridientListModel());
    ingredientItemModel3 = createModel(context, () => IngridientListModel());
    ingredientItemModel4 = createModel(context, () => IngridientListModel());
    ingredientItemModel5 = createModel(context, () => IngridientListModel());
    stepPreviewModel1 = createModel(context, () => StepPreviewModel());
    stepPreviewModel2 = createModel(context, () => StepPreviewModel());
    stepPreviewModel3 = createModel(context, () => StepPreviewModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    infoTagModel1.dispose();
    infoTagModel2.dispose();
    infoTagModel3.dispose();
    infoTagModel4.dispose();
    ingredientItemModel1.dispose();
    ingredientItemModel2.dispose();
    ingredientItemModel3.dispose();
    ingredientItemModel4.dispose();
    ingredientItemModel5.dispose();
    stepPreviewModel1.dispose();
    stepPreviewModel2.dispose();
    stepPreviewModel3.dispose();
    buttonModel.dispose();
  }
}
