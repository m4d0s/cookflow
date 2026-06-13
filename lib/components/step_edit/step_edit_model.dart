import '/flutter_flow/flutter_flow_util.dart';
import 'step_edit_widget.dart' show StepEditWidget;
import 'package:flutter/material.dart';

class StepEditModel extends FlutterFlowModel<StepEditWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - base64ToFFUploadedFile] action in StepEdit widget.
  FFUploadedFile? stepUploadAgain;
  // Stores action output result for [Custom Action - imageToBase64] action in Stack widget.
  String? imageBase64;
  // Stores action output result for [Custom Action - base64ToFFUploadedFile] action in Stack widget.
  FFUploadedFile? fFUploadImage;
  // State field(s) for Input widget.
  FocusNode? inputFocusNode1;
  TextEditingController? inputTextController1;
  String? Function(BuildContext, String?)? inputTextController1Validator;
  // State field(s) for Input widget.
  FocusNode? inputFocusNode2;
  TextEditingController? inputTextController2;
  String? Function(BuildContext, String?)? inputTextController2Validator;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputFocusNode1?.dispose();
    inputTextController1?.dispose();

    inputFocusNode2?.dispose();
    inputTextController2?.dispose();
  }
}
