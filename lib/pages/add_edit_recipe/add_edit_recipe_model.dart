import '/components/button/button_widget.dart';
import '/components/edit_step_item/edit_step_item_widget.dart';
import '/components/form_section_header/form_section_header_widget.dart';
import '/components/photo_frame_widget.dart';
import '/components/product_card_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'add_edit_recipe_widget.dart' show AddEditRecipeWidget;
import 'package:flutter/material.dart';

class AddEditRecipeModel extends FlutterFlowModel<AddEditRecipeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel;
  // Model for PhotoFrame component.
  late PhotoFrameModel photoFrameModel;
  // Model for TextField.
  late TextFieldModel textFieldModel1;
  // Model for TextField.
  late TextFieldModel textFieldModel2;
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // State field(s) for CountController widget.
  int? countControllerValue2;
  // State field(s) for Dropdown widget.
  String? dropdownValue1;
  FormFieldController<String>? dropdownValueController1;
  // State field(s) for Dropdown widget.
  String? dropdownValue2;
  FormFieldController<String>? dropdownValueController2;
  // State field(s) for CountController widget.
  int? countControllerValue3;
  // Model for FormSectionHeader.
  late FormSectionHeaderModel formSectionHeaderModel1;
  // Model for ProductCard component.
  late ProductCardModel productCardModel;
  // Model for FormSectionHeader.
  late FormSectionHeaderModel formSectionHeaderModel2;
  // Model for EditStepItem component.
  late EditStepItemModel editStepItemModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
    photoFrameModel = createModel(context, () => PhotoFrameModel());
    textFieldModel1 = createModel(context, () => TextFieldModel());
    textFieldModel2 = createModel(context, () => TextFieldModel());
    formSectionHeaderModel1 =
        createModel(context, () => FormSectionHeaderModel());
    productCardModel = createModel(context, () => ProductCardModel());
    formSectionHeaderModel2 =
        createModel(context, () => FormSectionHeaderModel());
    editStepItemModel = createModel(context, () => EditStepItemModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    photoFrameModel.dispose();
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    formSectionHeaderModel1.dispose();
    productCardModel.dispose();
    formSectionHeaderModel2.dispose();
    editStepItemModel.dispose();
  }
}
