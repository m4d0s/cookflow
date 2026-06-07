import '/backend/schema/structs/index.dart';
import '/components/recipe_card_mini/recipe_card_mini_widget.dart';
import '/components/u_button/u_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'day_card_model.dart';
export 'day_card_model.dart';

class DayCardWidget extends StatefulWidget {
  const DayCardWidget({
    super.key,
    this.dayLog,
  });

  final DailyPlanStruct? dayLog;

  @override
  State<DayCardWidget> createState() => _DayCardWidgetState();
}

class _DayCardWidgetState extends State<DayCardWidget> {
  late DayCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DayCardModel());
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
            padding: EdgeInsets.all(24.0),
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
                            )} рецепта • ${valueOrDefault<String>(
                              widget.dayLog?.done.calories.toString(),
                              '-1',
                            )} ккал',
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
                      FlutterFlowIconButton(
                        borderRadius: 9999.0,
                        buttonSize: 40.0,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        icon: Icon(
                          Icons.expand_less_rounded,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          _model.hideInfo = !_model.hideInfo;
                          safeSetState(() {});
                        },
                      ),
                    ],
                  ),
                  Container(
                    child: Visibility(
                      visible: _model.hideInfo,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Builder(
                            builder: (context) {
                              final meal =
                                  widget.dayLog?.completedRecipes.toList() ??
                                      [];

                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children:
                                    List.generate(meal.length, (mealIndex) {
                                  final mealItem = meal[mealIndex];
                                  return wrapWithModel(
                                    model: _model.recipeCardMiniModels.getModel(
                                      mealItem.date!.toString(),
                                      mealIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: RecipeCardMiniWidget(
                                      key: Key(
                                        'Keywtr_${mealItem.date!.toString()}',
                                      ),
                                    ),
                                  );
                                }),
                              );
                            },
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().selectedDay = DailyPlanStruct(
                                date: dateTimeFromSecondsSinceEpoch(
                                    getCurrentTimestamp.secondsSinceEpoch),
                              );
                              safeSetState(() {});

                              context.pushNamed(
                                RecipeChooseWidget.routeName,
                                extra: <String, dynamic>{
                                  '__transition_info__': TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.rightToLeft,
                                  ),
                                },
                              );
                            },
                            child: wrapWithModel(
                              model: _model.buttonModel,
                              updateCallback: () => safeSetState(() {}),
                              child: UButtonWidget(
                                content: 'Добавить рецепт',
                                icon: Icon(
                                  Icons.add_rounded,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 16.0,
                                ),
                                iconPresent: true,
                                iconEndPresent: false,
                                variant: 'ghost',
                                size: 'small',
                                fullWidth: true,
                                loading: false,
                                disabled: false,
                                maincolor: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 0.0)),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: FFAppConstants.Padding2.toDouble())),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
