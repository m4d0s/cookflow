import '/backend/schema/structs/index.dart';
import '/components/u_checkbox/u_checkbox_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ingredient_checker_model.dart';
export 'ingredient_checker_model.dart';

class IngredientCheckerWidget extends StatefulWidget {
  const IngredientCheckerWidget({
    super.key,
    this.product,
  });

  final ProductStruct? product;

  @override
  State<IngredientCheckerWidget> createState() =>
      _IngredientCheckerWidgetState();
}

class _IngredientCheckerWidgetState extends State<IngredientCheckerWidget> {
  late IngredientCheckerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IngredientCheckerModel());
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
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(valueOrDefault<double>(
              FFAppConstants.Padding2.toDouble(),
              0.0,
            )),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
              width: FFAppConstants.FrameThick.toDouble(),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(valueOrDefault<double>(
              FFAppConstants.Padding1.toDouble(),
              0.0,
            )),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.product?.name,
                            'Some product',
                          ),
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                                lineHeight: 1.6,
                              ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          valueOrDefault<String>(
                            '${widget.product?.quantity.count.toString()} ${widget.product?.quantity.name}',
                            '-1 kbnh',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                                lineHeight: 1.5,
                              ),
                        ),
                      ].divide(
                          SizedBox(height: FFAppConstants.Padding0.toDouble())),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.checkboxModel,
                    updateCallback: () => safeSetState(() {}),
                    child: UCheckboxWidget(
                      label: '⠀',
                      subtitle: '',
                      color: FlutterFlowTheme.of(context).primary,
                      isChecked: widget.product?.isChecked,
                      hasSubtitle: false,
                      disabled: false,
                    ),
                  ),
                ].divide(SizedBox(width: FFAppConstants.Padding2.toDouble())),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
