import '/flutter_flow/flutter_flow_util.dart';
import 'u_text_field_widget.dart' show UTextFieldWidget;
import 'package:flutter/material.dart';

class UTextFieldModel extends FlutterFlowModel<UTextFieldWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputTextController;
  String? Function(BuildContext, String?)? inputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputFocusNode?.dispose();
    inputTextController?.dispose();
  }
}
