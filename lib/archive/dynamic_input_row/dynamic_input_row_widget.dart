import '/backend/schema/enums/enums.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'dynamic_input_row_model.dart';
export 'dynamic_input_row_model.dart';

class DynamicInputRowWidget extends StatefulWidget {
  const DynamicInputRowWidget({
    super.key,
    String? hint,
    String? value,
  })  : this.hint = hint ?? 'Напр: 200г Муки',
        this.value = value ?? '400г Спагетти';

  final String hint;
  final String value;

  @override
  State<DynamicInputRowWidget> createState() => _DynamicInputRowWidgetState();
}

class _DynamicInputRowWidgetState extends State<DynamicInputRowWidget> {
  late DynamicInputRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DynamicInputRowModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: wrapWithModel(
                model: _model.textFieldModel,
                updateCallback: () => safeSetState(() {}),
                child: TextFieldWidget(
                  hint: valueOrDefault<String>(
                    widget.hint,
                    'Напр: 200г Муки',
                  ),
                  value: valueOrDefault<String>(
                    widget.value,
                    '400г Спагетти',
                  ),
                  variant: Textfield.ghost,
                ),
              ),
            ),
            Container(
              width: 44.0,
              height: 44.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).error10,
                borderRadius: BorderRadius.circular(12.0),
                shape: BoxShape.rectangle,
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 40.0,
                fillColor: Colors.transparent,
                icon: Icon(
                  Icons.delete_outline_rounded,
                  color: FlutterFlowTheme.of(context).error,
                  size: 20.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ].divide(SizedBox(width: 16.0)),
        ),
      ),
    );
  }
}
