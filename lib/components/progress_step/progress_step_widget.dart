import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'progress_step_model.dart';
export 'progress_step_model.dart';

class ProgressStepWidget extends StatefulWidget {
  const ProgressStepWidget({
    super.key,
    bool? active,
    bool? completed,
  })  : this.active = active ?? false,
        this.completed = completed ?? true;

  final bool active;
  final bool completed;

  @override
  State<ProgressStepWidget> createState() => _ProgressStepWidgetState();
}

class _ProgressStepWidgetState extends State<ProgressStepWidget> {
  late ProgressStepModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgressStepModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
      child: Container(
        child: Container(
          height: 6.0,
          decoration: BoxDecoration(
            color: () {
              if (widget.active) {
                return FlutterFlowTheme.of(context).primary;
              } else if (widget.completed) {
                return FlutterFlowTheme.of(context).primary40;
              } else {
                return FlutterFlowTheme.of(context).alternate;
              }
            }(),
            borderRadius: BorderRadius.circular(3.0),
            shape: BoxShape.rectangle,
          ),
        ),
      ),
    );
  }
}
