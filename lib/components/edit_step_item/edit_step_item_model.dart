import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_step_item_widget.dart' show EditStepItemWidget;
import 'package:flutter/material.dart';

class EditStepItemModel extends FlutterFlowModel<EditStepItemWidget> {
  ///  Local state fields for this component.

  bool isDeleted = false;

  ///  State fields for stateful widgets in this component.

  // Model for TextField component.
  late TextFieldModel textFieldModel1;
  // Model for TextField.
  late TextFieldModel textFieldModel2;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextFieldModel());
    textFieldModel2 = createModel(context, () => TextFieldModel());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
  }
}
