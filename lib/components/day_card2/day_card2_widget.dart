import '/backend/schema/structs/index.dart';
import '/components/recipe_card_mini/recipe_card_mini_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'day_card2_model.dart';
export 'day_card2_model.dart';

class DayCard2Widget extends StatefulWidget {
  const DayCard2Widget({
    super.key,
    this.dayLog,
    this.label,
  });

  final DailyPlanStruct? dayLog;
  final String? label;

  @override
  State<DayCard2Widget> createState() => _DayCard2WidgetState();
}

class _DayCard2WidgetState extends State<DayCard2Widget> {
  late DayCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DayCard2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(valueOrDefault<double>(
              FFAppConstants.Padding2.toDouble(),
              0.0,
            )),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsets.all(12.0),
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
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            functions.dayDetect012(widget.dayLog!.date!),
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.manrope(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                  lineHeight: 1.45,
                                ),
                          ),
                          Text(
                            '${valueOrDefault<String>(
                              widget.dayLog?.completedRecipes.length
                                  .toString(),
                              '-0',
                            )}${() {
                              if (functions
                                      .sklonenie(widget
                                          .dayLog!.completedRecipes.length)
                                      .toString() ==
                                  '1') {
                                return ' рецепт';
                              } else if (functions
                                      .sklonenie(widget
                                          .dayLog!.completedRecipes.length)
                                      .toString() ==
                                  '2') {
                                return ' рецепта';
                              } else {
                                return ' рецептов';
                              }
                            }()} • ${valueOrDefault<String>(
                              widget.dayLog?.done.calories.toString(),
                              '-1',
                            )} ккал • ${widget.dayLog?.waterCups.toString()}${() {
                              if (functions
                                      .sklonenie(widget.dayLog!.waterCups)
                                      .toString() ==
                                  '1') {
                                return ' кружка';
                              } else if (functions
                                      .sklonenie(widget.dayLog!.waterCups)
                                      .toString() ==
                                  '2') {
                                return ' кружки';
                              } else {
                                return ' кружек';
                              }
                            }()}',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.manrope(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ].divide(SizedBox(
                            height: FFAppConstants.Padding0.toDouble())),
                      ),
                      Stack(
                        children: [
                          if (!_model.hideInfo)
                            FlutterFlowIconButton(
                              borderRadius: 9999.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              icon: Icon(
                                Icons.keyboard_arrow_up,
                              ),
                              onPressed: () async {
                                _model.hideInfo = !_model.hideInfo;
                                safeSetState(() {});
                              },
                            ),
                          if (_model.hideInfo)
                            FlutterFlowIconButton(
                              borderRadius: 9999.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              icon: Icon(
                                Icons.expand_more,
                              ),
                              onPressed: () async {
                                _model.hideInfo = !_model.hideInfo;
                                safeSetState(() {});
                              },
                            ),
                        ],
                      ),
                    ],
                  ),
                  if (!_model.hideInfo)
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              if (widget.dayLog!.completedRecipes.length < 1)
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 64.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'В этот день нету записей по приёму пищи',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              if (widget.dayLog!.completedRecipes.length > 0)
                                Builder(
                                  builder: (context) {
                                    final meal = widget
                                            .dayLog?.completedRecipes
                                            .toList() ??
                                        [];

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(meal.length,
                                          (mealIndex) {
                                        final mealItem = meal[mealIndex];
                                        return wrapWithModel(
                                          model: _model.recipeCardMiniModels
                                              .getModel(
                                            mealItem.date!.toString(),
                                            mealIndex,
                                          ),
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: RecipeCardMiniWidget(
                                            key: Key(
                                              'Keyn67_${mealItem.date!.toString()}',
                                            ),
                                            isDeleted: false,
                                            hideDelete: true,
                                            mealEntry: mealItem,
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                            ],
                          ),
                        ].divide(SizedBox(height: 0.0)),
                      ),
                    ),
                ].divide(SizedBox(height: 8.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
