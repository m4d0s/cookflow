import '/backend/schema/enums/enums.dart';
import '/components/ingridient_edit/ingridient_edit_widget.dart';
import '/components/step_edit/step_edit_widget.dart';
import '/components/u_button/u_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'recipe_edit_widget.dart' show RecipeEditWidget;
import 'package:flutter/material.dart';

class RecipeEditModel extends FlutterFlowModel<RecipeEditWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - base64ToFFUploadedFile] action in RecipeEdit widget.
  FFUploadedFile? pictureAgainn;
  // Model for Button.
  late UButtonModel buttonModel;
  // Stores action output result for [Custom Action - importBackup] action in Button widget.
  String? error;
  // Stores action output result for [Custom Action - imageToBase64] action in Container widget.
  String? recipePhotoBase64;
  // Stores action output result for [Custom Action - base64ToFFUploadedFile] action in Container widget.
  FFUploadedFile? recipePhoto;
  // State field(s) for Input widget.
  FocusNode? inputFocusNode1;
  TextEditingController? inputTextController1;
  String? Function(BuildContext, String?)? inputTextController1Validator;
  // State field(s) for Input widget.
  FocusNode? inputFocusNode2;
  TextEditingController? inputTextController2;
  String? Function(BuildContext, String?)? inputTextController2Validator;
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // State field(s) for CountController widget.
  int? countControllerValue2;
  // State field(s) for category widget.
  Food? categoryValue;
  FormFieldController<Food>? categoryValueController;
  // State field(s) for DropDown widget.
  Hardness? dropDownValue;
  FormFieldController<Hardness>? dropDownValueController;
  // Models for IngridientEdit dynamic component.
  late FlutterFlowDynamicModels<IngridientEditModel> ingridientEditModels;
  // Models for StepEdit dynamic component.
  late FlutterFlowDynamicModels<StepEditModel> stepEditModels;
  // Stores action output result for [Custom Action - recipeComplete] action in FloatingActionButton widget.
  List<bool>? isComplete;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => UButtonModel());
    ingridientEditModels =
        FlutterFlowDynamicModels(() => IngridientEditModel());
    stepEditModels = FlutterFlowDynamicModels(() => StepEditModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    inputFocusNode1?.dispose();
    inputTextController1?.dispose();

    inputFocusNode2?.dispose();
    inputTextController2?.dispose();

    ingridientEditModels.dispose();
    stepEditModels.dispose();
  }
}
