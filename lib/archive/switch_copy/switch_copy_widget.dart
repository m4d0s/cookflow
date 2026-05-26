import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'switch_copy_model.dart';
export 'switch_copy_model.dart';

class SwitchCopyWidget extends StatefulWidget {
  const SwitchCopyWidget({super.key});

  @override
  State<SwitchCopyWidget> createState() => _SwitchCopyWidgetState();
}

class _SwitchCopyWidgetState extends State<SwitchCopyWidget> {
  late SwitchCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchCopyModel());

    _model.switchValue = true;
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Switch.adaptive(
        value: _model.switchValue!,
        onChanged: (newValue) async {
          safeSetState(() => _model.switchValue = newValue);
        },
        activeColor: FlutterFlowTheme.of(context).primary,
        activeTrackColor: FlutterFlowTheme.of(context).primary,
        inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
        inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
      ),
    );
  }
}
