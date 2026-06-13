import '/backend/schema/structs/index.dart';
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
    int? multiplier,
  }) : this.multiplier = multiplier ?? 1;

  final ProductStruct? product;
  final int multiplier;

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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).alternate,
                      ),
                      child: CheckboxListTile(
                        value: _model.checkboxListTileValue ??= true,
                        onChanged: (newValue) async {
                          safeSetState(
                              () => _model.checkboxListTileValue = newValue!);
                        },
                        title: Text(
                          valueOrDefault<String>(
                            widget.product?.name,
                            'Some product',
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                        ),
                        subtitle: Text(
                          valueOrDefault<String>(
                            '${(widget.product!.quantity.count * widget.multiplier).toString()} ${widget.product?.quantity.quantity}',
                            '-1 kbnh',
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                        ),
                        tileColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: FlutterFlowTheme.of(context).info,
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
