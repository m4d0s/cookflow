import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/u_text_field/u_text_field_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'step_edit_model.dart';
export 'step_edit_model.dart';

class StepEditWidget extends StatefulWidget {
  const StepEditWidget({
    super.key,
    required this.step,
  });

  final StepStruct? step;

  @override
  State<StepEditWidget> createState() => _StepEditWidgetState();
}

class _StepEditWidgetState extends State<StepEditWidget> {
  late StepEditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StepEditModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(valueOrDefault<double>(
          FFAppConstants.Padding1.toDouble(),
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
                    'Шаг ${widget.step?.queueId.toString()}',
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
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      // Remove item at last index
                      FFAppState().updateRecipeSelectStruct(
                        (e) => e
                          ..updateCookingSteps(
                            (e) => e.removeAt(widget.step!.queueId),
                          ),
                      );
                      // Insert item at new index
                      FFAppState().updateRecipeSelectStruct(
                        (e) => e
                          ..updateCookingSteps(
                            (e) => e.insert(
                                functions.returnIndexCollide(
                                    widget.step!.queueId,
                                    -1,
                                    FFAppState()
                                        .RecipeSelect
                                        .cookingSteps
                                        .length),
                                widget.step!),
                          ),
                      );
                      // Renew QueueIds
                      _model.lastID = await actions.recallStepIds(
                        FFAppState().RecipeSelect.cookingSteps.toList(),
                      );
                      // Rebuild
                      _model.updatePage(() {});

                      safeSetState(() {});
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Поднять',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                        Icon(
                          Icons.arrow_upward,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 20.0,
                        ),
                      ].divide(
                          SizedBox(width: FFAppConstants.Padding0.toDouble())),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    children: [
                      Icon(
                        Icons.add_a_photo,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 48.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1560986752-2e31d9507413?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxmaXJld29ya3N8ZW58MHx8fHwxNzgwMjc2MzgwfDA&ixlib=rb-4.1.0&q=80&w=400',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: wrapWithModel(
                      model: _model.uTextFieldModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: UTextFieldWidget(
                        hint: 'Опишите шаг готовки...',
                        value: widget.step?.desc,
                        leadingIcon: Icon(
                          Icons.edit,
                        ),
                        variant: Textfield.ghost,
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.uTextFieldModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: UTextFieldWidget(
                        hint: 'Cовет (необязательно)',
                        value: widget.step?.tip,
                        leadingIcon: Icon(
                          Icons.auto_awesome_rounded,
                        ),
                        variant: Textfield.ghost,
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: FFAppConstants.Padding0.toDouble())),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timer_sharp,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  Text(
                    'Таймер (мин)',
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
                    width: 100.0,
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
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontStyle,
                            ),
                      ),
                      count: _model.countControllerValue ??= 0,
                      updateCount: (count) => safeSetState(
                          () => _model.countControllerValue = count),
                      stepSize: 1,
                      minimum: 0,
                      maximum: 999,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
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
                    onPressed: () async {
                      FFAppState().updateRecipeSelectStruct(
                        (e) => e
                          ..updateCookingSteps(
                            (e) => e.removeAt(widget.step!.queueId),
                          ),
                      );
                      _model.lastID1 = await actions.recallStepIds(
                        FFAppState().RecipeSelect.cookingSteps.toList(),
                      );
                      _model.updatePage(() {});

                      safeSetState(() {});
                    },
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ].divide(SizedBox(height: FFAppConstants.Padding2.toDouble())),
          ),
        ),
      ),
    );
  }
}
