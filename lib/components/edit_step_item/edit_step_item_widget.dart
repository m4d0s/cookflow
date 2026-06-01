import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/photo_frame_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'edit_step_item_model.dart';
export 'edit_step_item_model.dart';

class EditStepItemWidget extends StatefulWidget {
  const EditStepItemWidget({
    super.key,
    required this.step,
  });

  final StepStruct? step;

  @override
  State<EditStepItemWidget> createState() => _EditStepItemWidgetState();
}

class _EditStepItemWidgetState extends State<EditStepItemWidget> {
  late EditStepItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditStepItemModel());
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
        borderRadius: BorderRadius.circular(valueOrDefault<double>(
          FFAppConstants.Padding2.toDouble(),
          0.0,
        )),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Шаг 1',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          font: GoogleFonts.manrope(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).onSurface,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                          lineHeight: 1.4,
                        ),
                  ),
                  Icon(
                    Icons.drag_indicator_rounded,
                    color: FlutterFlowTheme.of(context).onSurface,
                    size: 20.0,
                  ),
                ],
              ),
              if (FFAppConstants.TrueValue == false)
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.photoFrameModel,
                      updateCallback: () => safeSetState(() {}),
                      child: PhotoFrameWidget(),
                    ),
                  ],
                ),
              wrapWithModel(
                model: _model.textFieldModel1,
                updateCallback: () => safeSetState(() {}),
                child: TextFieldWidget(
                  hint: 'Опишите шаг готовки...',
                  leadingIcon: Icon(
                    Icons.edit,
                  ),
                  variant: Textfield.ghost,
                ),
              ),
              wrapWithModel(
                model: _model.textFieldModel2,
                updateCallback: () => safeSetState(() {}),
                child: TextFieldWidget(
                  hint: 'Добавьте совет...',
                  value: '',
                  variant: Textfield.ghost,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timer_sharp,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  Text(
                    'Timer (min)',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Container(
                    width: 120.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(8.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: FlutterFlowCountController(
                      decrementIconBuilder: (enabled) => Icon(
                        Icons.remove_rounded,
                        color: enabled
                            ? FlutterFlowTheme.of(context).secondaryText
                            : FlutterFlowTheme.of(context).alternate,
                        size: 24.0,
                      ),
                      incrementIconBuilder: (enabled) => Icon(
                        Icons.add_rounded,
                        color: enabled
                            ? FlutterFlowTheme.of(context).primary
                            : FlutterFlowTheme.of(context).alternate,
                        size: 24.0,
                      ),
                      countBuilder: (count) => Text(
                        count.toString(),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              font: GoogleFonts.manrope(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontStyle,
                              ),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontStyle,
                            ),
                      ),
                      count: _model.countControllerValue ??= 1,
                      updateCount: (count) => safeSetState(
                          () => _model.countControllerValue = count),
                      stepSize: 1,
                      minimum: 1,
                      maximum: 999,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: Colors.transparent,
                    icon: Icon(
                      Icons.delete_outline_rounded,
                      color: FlutterFlowTheme.of(context).error,
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}
