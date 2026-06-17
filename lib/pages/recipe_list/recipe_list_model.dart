import '/backend/schema/enums/enums.dart';
import '/components/recipe_card1/recipe_card1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'recipe_list_widget.dart' show RecipeListWidget;
import 'package:flutter/material.dart';

class RecipeListModel extends FlutterFlowModel<RecipeListWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputTextController;
  String? Function(BuildContext, String?)? inputTextControllerValidator;
  // State field(s) for Dropdown widget.
  Food? dropdownValue1;
  FormFieldController<Food>? dropdownValueController1;
  // State field(s) for Dropdown widget.
  Hardness? dropdownValue2;
  FormFieldController<Hardness>? dropdownValueController2;
  // Models for RecipeCard.
  late FlutterFlowDynamicModels<RecipeCard1Model> recipeCardModels;

  @override
  void initState(BuildContext context) {
    recipeCardModels = FlutterFlowDynamicModels(() => RecipeCard1Model());
  }

  @override
  void dispose() {
    inputFocusNode?.dispose();
    inputTextController?.dispose();

    recipeCardModels.dispose();
  }
}
