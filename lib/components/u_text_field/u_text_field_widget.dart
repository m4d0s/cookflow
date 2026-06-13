import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'u_text_field_model.dart';
export 'u_text_field_model.dart';

class UTextFieldWidget extends StatefulWidget {
  const UTextFieldWidget({
    super.key,
    String? hint,
    String? value,
    this.leadingIcon,
    this.variant,
    this.label,
  })  : this.hint = hint ?? 'Поиск рецептов...',
        this.value = value ?? '';

  final String hint;
  final String value;
  final Widget? leadingIcon;
  final Textfield? variant;
  final String? label;

  @override
  State<UTextFieldWidget> createState() => _UTextFieldWidgetState();
}

class _UTextFieldWidgetState extends State<UTextFieldWidget> {
  late UTextFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UTextFieldModel());

    _model.inputTextController ??= TextEditingController(text: widget.value);
    _model.inputFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 60.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(valueOrDefault<double>(
              FFAppConstants.Padding2.toDouble(),
              0.0,
            )),
            border: Border.all(
              color: () {
                if (widget.variant == Textfield.error) {
                  return FlutterFlowTheme.of(context).error;
                } else if (widget.variant == Textfield.ghost) {
                  return FlutterFlowTheme.of(context).alternate;
                } else {
                  return FlutterFlowTheme.of(context).fullContrast;
                }
              }(),
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                valueOrDefault<double>(
                  FFAppConstants.Padding1.toDouble(),
                  0.0,
                ),
                valueOrDefault<double>(
                  FFAppConstants.Padding1.toDouble(),
                  0.0,
                ),
                valueOrDefault<double>(
                  FFAppConstants.Padding1.toDouble(),
                  0.0,
                ),
                valueOrDefault<double>(
                  FFAppConstants.Padding1.toDouble(),
                  0.0,
                )),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widget.leadingIcon!,
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    controller: _model.inputTextController,
                    focusNode: _model.inputFocusNode,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: valueOrDefault<String>(
                        widget.hint,
                        'Поиск рецептов...',
                      ),
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).accent3,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                                lineHeight: 1.55,
                              ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                          lineHeight: 1.55,
                        ),
                    validator: _model.inputTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ].divide(SizedBox(width: FFAppConstants.Padding1.toDouble())),
            ),
          ),
        ),
      ],
    );
  }
}
