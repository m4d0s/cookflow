import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dynamic_input_row_widget.dart' show DynamicInputRowWidget;
import 'package:flutter/material.dart';

class DynamicInputRowModel extends FlutterFlowModel<DynamicInputRowWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TextField.
  late TextFieldModel textFieldModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
  }
}
