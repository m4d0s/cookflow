import '/archive/ingridient_preview/ingridient_preview_widget.dart';
import '/backend/schema/structs/index.dart';
import '/components/info_tag/info_tag_widget.dart';
import '/components/step_preview/step_preview_widget.dart';
import '/components/u_button/u_button_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'recipe_detail_widget.dart' show RecipeDetailWidget;
import 'package:flutter/material.dart';

class RecipeDetailModel extends FlutterFlowModel<RecipeDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getRecipeTags] action in RecipeDetail widget.
  FulltagStruct? recipeTags;
  // Stores action output result for [Custom Action - base64ToFFUploadedFile] action in RecipeDetail widget.
  FFUploadedFile? recipeMainPhoto;
  // Model for InfoTag.
  late InfoTagModel infoTagModel1;
  // Model for InfoTag.
  late InfoTagModel infoTagModel2;
  // Model for InfoTag.
  late InfoTagModel infoTagModel3;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Models for IngredientItem.
  late FlutterFlowDynamicModels<IngridientPreviewModel> ingredientItemModels;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ProductStruct>();
  // Models for StepPreview.
  late FlutterFlowDynamicModels<StepPreviewModel> stepPreviewModels;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Model for Button.
  late UButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    infoTagModel1 = createModel(context, () => InfoTagModel());
    infoTagModel2 = createModel(context, () => InfoTagModel());
    infoTagModel3 = createModel(context, () => InfoTagModel());
    ingredientItemModels =
        FlutterFlowDynamicModels(() => IngridientPreviewModel());
    stepPreviewModels = FlutterFlowDynamicModels(() => StepPreviewModel());
    buttonModel = createModel(context, () => UButtonModel());
  }

  @override
  void dispose() {
    infoTagModel1.dispose();
    infoTagModel2.dispose();
    infoTagModel3.dispose();
    ingredientItemModels.dispose();
    paginatedDataTableController.dispose();
    stepPreviewModels.dispose();
    buttonModel.dispose();
  }
}
