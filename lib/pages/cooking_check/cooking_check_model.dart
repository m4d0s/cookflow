import '/backend/schema/structs/index.dart';
import '/components/u_button/u_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cooking_check_widget.dart' show CookingCheckWidget;
import 'package:flutter/material.dart';

class CookingCheckModel extends FlutterFlowModel<CookingCheckWidget> {
  ///  Local state fields for this page.

  int checked = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - base64ToFFUploadedFile] action in CookingCheck widget.
  FFUploadedFile? picture;
  // State field(s) for CheckboxListTile widget.
  Map<ProductStruct, bool> checkboxListTileValueMap = {};
  List<ProductStruct> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CountController widget.
  int? countControllerValue;
  // Model for Button.
  late UButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => UButtonModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
