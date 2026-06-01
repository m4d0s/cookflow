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
  // Models for IngredientItem.
  late FlutterFlowDynamicModels<IngridientListModel> ingredientItemModels;
  // Models for StepPreview.
  late FlutterFlowDynamicModels<StepPreviewModel> stepPreviewModels;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    infoTagModel1 = createModel(context, () => InfoTagModel());
    infoTagModel2 = createModel(context, () => InfoTagModel());
    infoTagModel3 = createModel(context, () => InfoTagModel());
    infoTagModel4 = createModel(context, () => InfoTagModel());
    ingredientItemModels =
        FlutterFlowDynamicModels(() => IngridientListModel());
    stepPreviewModels = FlutterFlowDynamicModels(() => StepPreviewModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    infoTagModel1.dispose();
    infoTagModel2.dispose();
    infoTagModel3.dispose();
    infoTagModel4.dispose();
    ingredientItemModels.dispose();
    stepPreviewModels.dispose();
    buttonModel.dispose();
  }
}
