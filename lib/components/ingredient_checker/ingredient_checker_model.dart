import '/components/u_checkbox/u_checkbox_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ingredient_checker_widget.dart' show IngredientCheckerWidget;
import 'package:flutter/material.dart';

class IngredientCheckerModel extends FlutterFlowModel<IngredientCheckerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Checkbox.
  late UCheckboxModel checkboxModel;

  @override
  void initState(BuildContext context) {
    checkboxModel = createModel(context, () => UCheckboxModel());
  }

  @override
  void dispose() {
    checkboxModel.dispose();
  }
}
