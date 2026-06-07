import '/components/u_text_field/u_text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'step_edit_widget.dart' show StepEditWidget;
import 'package:flutter/material.dart';

class StepEditModel extends FlutterFlowModel<StepEditWidget> {
  ///  Local state fields for this component.

  bool isDeleted = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - recallStepIds] action in Row widget.
  int? lastID;
  // Model for UTextField component.
  late UTextFieldModel uTextFieldModel1;
  // Model for UTextField component.
  late UTextFieldModel uTextFieldModel2;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Custom Action - recallStepIds] action in IconButton widget.
  int? lastID1;

  @override
  void initState(BuildContext context) {
    uTextFieldModel1 = createModel(context, () => UTextFieldModel());
    uTextFieldModel2 = createModel(context, () => UTextFieldModel());
  }

  @override
  void dispose() {
    uTextFieldModel1.dispose();
    uTextFieldModel2.dispose();
  }
}
