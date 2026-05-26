import '/components/dark_mode_setting_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'settings_page_widget.dart' show SettingsPageWidget;
import 'package:flutter/material.dart';

class SettingsPageModel extends FlutterFlowModel<SettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DarkModeSetting component.
  late DarkModeSettingModel darkModeSettingModel;

  @override
  void initState(BuildContext context) {
    darkModeSettingModel = createModel(context, () => DarkModeSettingModel());
  }

  @override
  void dispose() {
    darkModeSettingModel.dispose();
  }
}
