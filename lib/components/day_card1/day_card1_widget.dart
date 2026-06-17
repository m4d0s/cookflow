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
import 'package:provider/provider.dart';
import 'day_card1_model.dart';
export 'day_card1_model.dart';

class DayCard1Widget extends StatefulWidget {
  const DayCard1Widget({
    super.key,
    this.dayLog,
    bool? hidePanel,
  }) : this.hidePanel = hidePanel ?? true;

  final DailyPlanStruct? dayLog;
  final bool hidePanel;

  @override
  State<DayCard1Widget> createState() => _DayCard1WidgetState();
}

class _DayCard1WidgetState extends State<DayCard1Widget> {
  late DayCard1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DayCard1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
                            'Сегодняшний рацион',
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
                            )} ${() {
                              if (functions
                                      .sklonenie(widget
                                          .dayLog!.completedRecipes.length)
                                      .toString() ==
                                  '1') {
                                return 'рецепт';
                              } else if (functions
                                      .sklonenie(widget
                                          .dayLog!.completedRecipes.length)
                                      .toString() ==
                                  '2') {
                                return 'рецепта';
                              } else {
                                return 'рецептов';
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
                                              'Keywtr_${mealItem.date!.toString()}',
                                            ),
                                            isDeleted: false,
                                            mealEntry: mealItem,
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                            ],
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (FFAppState().RecipeList.length > 0) {
                                context.pushNamed(
                                  MealSelectWidget.routeName,
                                  extra: <String, dynamic>{
                                    '__transition_info__': TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.rightToLeft,
                                    ),
                                  },
                                );
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('У вас нету рецептов'),
                                      content: Text(
                                          'Прежде, чем добавлять рецепты в план питания, сначала создайте их в главном меню по кнопке \"Создать рецепт\"'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Хорошо, сделаю'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
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
                ].divide(SizedBox(height: 8.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
