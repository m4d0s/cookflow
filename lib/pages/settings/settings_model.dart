import '/backend/schema/enums/enums.dart';
import '/components/app_info/app_info_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  AppTheme? dropDownValue1;
  FormFieldController<AppTheme>? dropDownValueController1;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late MaskTextInputFormatter textFieldMask2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  late MaskTextInputFormatter textFieldMask3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  late MaskTextInputFormatter textFieldMask4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for Sex widget.
  HumanSex? sexValue;
  FormFieldController<HumanSex>? sexValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  late MaskTextInputFormatter textFieldMask5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  late MaskTextInputFormatter textFieldMask6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  late MaskTextInputFormatter textFieldMask7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for da widget.
  MealAction? daValue;
  FormFieldController<MealAction>? daValueController;
  // State field(s) for DropDown widget.
  MealTarget? dropDownValue2;
  FormFieldController<MealTarget>? dropDownValueController2;
  // Stores action output result for [Custom Action - exportJson] action in Container widget.
  String? snacktext;
  // Stores action output result for [Custom Action - importBackup] action in Container Bordered Content widget.
  bool? inputJson;
  bool isDataUploading_uploadDataUwf = false;
  FFUploadedFile uploadedLocalFile_uploadDataUwf =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Model for AppInfo component.
  late AppInfoModel appInfoModel;

  @override
  void initState(BuildContext context) {
    appInfoModel = createModel(context, () => AppInfoModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    appInfoModel.dispose();
  }
}
