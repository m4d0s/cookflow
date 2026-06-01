import '/components/day_card/day_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'meal_plan_model.dart';
export 'meal_plan_model.dart';

class MealPlanWidget extends StatefulWidget {
  const MealPlanWidget({super.key});

  static String routeName = 'MealPlan';
  static String routePath = '/mealPlan';

  @override
  State<MealPlanWidget> createState() => _MealPlanWidgetState();
}

class _MealPlanWidgetState extends State<MealPlanWidget> {
  late MealPlanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MealPlanModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            context.pushNamed(AddToPlanWidget.routeName);
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          icon: Icon(
            Icons.plus_one,
            color: FlutterFlowTheme.of(context).onPrimary,
            size: 24.0,
          ),
          elevation: 0.0,
          label: Text(
            'Добавить сегодня',
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  font: GoogleFonts.manrope(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).onPrimary,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).onPrimary,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'План питания',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.manrope(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).onPrimary,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (FFAppConstants.FalseValue)
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).transparent,
                          icon: Icon(
                            Icons.arrow_back,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            context.pushNamed(RecipesWidget.routeName);
                          },
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'План питания',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontStyle,
                                    lineHeight: 1.3,
                                  ),
                            ),
                            Text(
                              'Ваш план питания',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.55,
                                  ),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ].divide(SizedBox(width: 36.0)),
                    ),
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
              child: Container(
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryContainer30,
                    borderRadius: BorderRadius.circular(valueOrDefault<double>(
                      FFAppConstants.Padding2.toDouble(),
                      0.0,
                    )),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Сегогодня калл',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .onPrimaryContainer,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                      lineHeight: 1.3,
                                    ),
                              ),
                              Text(
                                '1245',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .onPrimaryContainer,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                          Container(
                            width: 1.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Среднее калл',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .onPrimaryContainer,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                      lineHeight: 1.3,
                                    ),
                              ),
                              Text(
                                '1000',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .onPrimaryContainer,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                          Container(
                            width: 1.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Цель калл',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .onPrimaryContainer,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                      lineHeight: 1.3,
                                    ),
                              ),
                              Text(
                                '1000',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .onPrimaryContainer,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 24.0),
                        child: Container(
                          child: Builder(
                            builder: (context) {
                              final day = FFAppState()
                                  .AllDailyPlans
                                  .map((e) => e)
                                  .toList();

                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: List.generate(day.length, (dayIndex) {
                                  final dayItem = day[dayIndex];
                                  return wrapWithModel(
                                    model: _model.dayCardModels.getModel(
                                      dayItem.date!.toString(),
                                      dayIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: DayCardWidget(
                                      key: Key(
                                        'Key511_${dayItem.date!.toString()}',
                                      ),
                                      dayLog: dayItem,
                                    ),
                                  );
                                }).divide(SizedBox(height: 0.0)),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
