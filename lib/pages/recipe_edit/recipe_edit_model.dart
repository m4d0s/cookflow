import '/backend/schema/enums/enums.dart';
import '/components/ingridient_edit/ingridient_edit_widget.dart';
import '/components/step_edit/step_edit_widget.dart';
import '/components/u_button/u_button_widget.dart';
import '/components/u_text_field/u_text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'recipe_edit_widget.dart' show RecipeEditWidget;
import 'package:flutter/material.dart';

class RecipeEditModel extends FlutterFlowModel<RecipeEditWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late UButtonModel buttonModel;
  // Stores action output result for [Custom Action - imageToBase64] action in Container widget.
  String? recipePhotoBase64;
  // Stores action output result for [Custom Action - base64ToFFUploadedFile] action in Container widget.
  FFUploadedFile? recipePhoto;
  // Model for TextField.
  late UTextFieldModel textFieldModel1;
  // Model for TextField.
  late UTextFieldModel textFieldModel2;
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // State field(s) for CountController widget.
  int? countControllerValue2;
  // State field(s) for DropDown widget.
  Food? dropDownValue1;
  FormFieldController<Food>? dropDownValueController1;
  // State field(s) for DropDown widget.
  Hardness? dropDownValue2;
  FormFieldController<Hardness>? dropDownValueController2;
  // State field(s) for CountController widget.
  int? countControllerValue3;
  // Stores action output result for [Custom Action - getNextId] action in Row widget.
  int? newproductID;
  // Models for IngridientEdit dynamic component.
  late FlutterFlowDynamicModels<IngridientEditModel> ingridientEditModels;
  // Stores action output result for [Custom Action - getNextId] action in Row widget.
  int? newstepID;
  // Models for StepEdit dynamic component.
  late FlutterFlowDynamicModels<StepEditModel> stepEditModels;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => UButtonModel());
    textFieldModel1 = createModel(context, () => UTextFieldModel());
    textFieldModel2 = createModel(context, () => UTextFieldModel());
    ingridientEditModels =
        FlutterFlowDynamicModels(() => IngridientEditModel());
    stepEditModels = FlutterFlowDynamicModels(() => StepEditModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    ingridientEditModels.dispose();
    stepEditModels.dispose();
  }
}
