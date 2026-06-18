import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/day_card1/day_card1_widget.dart';
import '/components/macro_stat/macro_stat_widget.dart';
import '/components/parameter_input/parameter_input_widget.dart';
import '/components/water_balance/water_balance_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'meal_preview_model.dart';
export 'meal_preview_model.dart';

/// Подсчёт дневного потребления кбжу на основе индивидуальных параметров
/// человека
class MealPreviewWidget extends StatefulWidget {
  const MealPreviewWidget({super.key});

  static String routeName = 'MealPreview';
  static String routePath = 'mealPreview';

  @override
  State<MealPreviewWidget> createState() => _MealPreviewWidgetState();
}

class _MealPreviewWidgetState extends State<MealPreviewWidget> {
  late MealPreviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MealPreviewModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().AutoNutrition) {
        await actions.measureTDEE();
      }
      await actions.updateDatePlan(
        FFAppState().DailySelect,
        false,
        RecipeStruct(
          id: -1,
        ),
        -1,
      );
      safeSetState(() {});
    });
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
              if (Navigator.of(context).canPop()) {
                context.pop();
              }
              context.pushNamed(
                RecipeListWidget.routeName,
                extra: <String, dynamic>{
                  '__transition_info__': TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.topToBottom,
                  ),
                },
              );
            },
          ),
          title: Text(
            'Дневной план',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.manrope(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).onPrimary,
                  fontSize: 18.0,
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
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32.0),
                    bottomRight: Radius.circular(32.0),
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 32.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Показатели сегодняшнего КБЖУ',
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
                                        .onSecondary,
                                    fontSize: 16.0,
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
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.65,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                FFAppState()
                                                    .DailySelect
                                                    .done
                                                    .calories,
                                                formatType: FormatType.custom,
                                                format: '#',
                                                locale: '',
                                              ),
                                              '12345',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w900,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .onSecondary,
                                                  fontSize: 36.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w900,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Text(
                                            'ккал',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .onSecondary,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                      LinearPercentIndicator(
                                        percent: functions.procentCalc(
                                            FFAppState()
                                                .DailySelect
                                                .done
                                                .calories,
                                            FFAppState().DailyGoal.calories),
                                        lineHeight: 12.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .accent4,
                                        barRadius: Radius.circular(8.0),
                                        padding: EdgeInsets.zero,
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Text(
                                          '${formatNumber(
                                            FFAppState()
                                                .DailySelect
                                                .goal
                                                .calories,
                                            formatType: FormatType.custom,
                                            format: 'Цель: # ккал',
                                            locale: '',
                                          )} (${formatNumber(
                                            functions.procentCalc(
                                                FFAppState()
                                                    .DailySelect
                                                    .done
                                                    .calories,
                                                FFAppState()
                                                    .DailyGoal
                                                    .calories),
                                            formatType: FormatType.percent,
                                          )})',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onSecondary,
                                                fontSize: 12.0,
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
                                    ],
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      MealPlanWidget.routeName,
                                      extra: <String, dynamic>{
                                        '__transition_info__': TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.leftToRight,
                                        ),
                                      },
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.history_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .onPrimary,
                                            size: 24.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.macroStatModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: MacroStatWidget(
                                  label: 'Белки',
                                  value: '${formatNumber(
                                    FFAppState().DailySelect.done.protein,
                                    formatType: FormatType.custom,
                                    format: '#.0',
                                    locale: '',
                                  )}/${formatNumber(
                                    FFAppState().DailySelect.goal.protein,
                                    formatType: FormatType.custom,
                                    format: '#.0 г',
                                    locale: '',
                                  )}',
                                  progress: functions.procentCalc(
                                      FFAppState().DailySelect.done.protein,
                                      FFAppState().DailyGoal.protein),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.macroStatModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: MacroStatWidget(
                                  label: 'Жиры',
                                  value: '${formatNumber(
                                    FFAppState().DailySelect.done.fats,
                                    formatType: FormatType.custom,
                                    format: '#.0',
                                    locale: '',
                                  )}/${formatNumber(
                                    FFAppState().DailySelect.goal.fats,
                                    formatType: FormatType.custom,
                                    format: '#.0 г',
                                    locale: '',
                                  )}',
                                  progress: functions.procentCalc(
                                      FFAppState().DailySelect.done.fats,
                                      FFAppState().DailyGoal.fats),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.macroStatModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: MacroStatWidget(
                                  label: 'Углеводы',
                                  value: '${formatNumber(
                                    FFAppState().DailySelect.done.carbs,
                                    formatType: FormatType.custom,
                                    format: '#.0',
                                    locale: '',
                                  )}/${formatNumber(
                                    FFAppState().DailySelect.goal.carbs,
                                    formatType: FormatType.custom,
                                    format: '#.0 г',
                                    locale: '',
                                  )}',
                                  progress: functions.procentCalc(
                                      FFAppState().DailySelect.done.carbs,
                                      FFAppState().DailyGoal.carbs),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ].divide(SizedBox(height: 24.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    wrapWithModel(
                      model: _model.waterBalanceModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WaterBalanceWidget(
                        dailyplan: FFAppState().DailySelect,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.dayCard1Model,
                      updateCallback: () => safeSetState(() {}),
                      child: DayCard1Widget(
                        dayLog: FFAppState().DailySelect,
                        hidePanel: false,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Индивидуальные параметры',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                        ),
                        if (!FFAppState().AutoNutrition)
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      'Ваши параметры КБЖУ установлены вручную',
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      minFontSize: 15.0,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            font: GoogleFonts.manrope(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    Divider(
                                      thickness: 2.0,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                                    Text(
                                      'Если хотите атоматический подсчёт вашей нормы КБЖУ по параметрам тела (пол, вес, рост, возраст, активность, цель), перейдите в найтройки и включите параметр \"Автоматический подсчёт\" или нажмите кнопку',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: GoogleFonts.manrope(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await actions.measureTDEE();
                                        FFAppState().AutoNutrition = true;
                                        safeSetState(() {});
                                        safeSetState(() {});
                                      },
                                      text: 'Включить автоподсчёт',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.manrope(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .onPrimary,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        if (FFAppState().AutoNutrition)
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.emoji_people_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Пол человека: ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      Text(
                                        FFAppState().PeopleStat.sex ==
                                                HumanSex.female
                                            ? 'Женщина'
                                            : 'Мужчина',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 4.0)),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: wrapWithModel(
                                      model: _model.parameterInputModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ParameterInputWidget(
                                        icon: Icon(
                                          Icons.scale_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 18.0,
                                        ),
                                        tone: FlutterFlowTheme.of(context)
                                            .primary,
                                        label: 'Вес',
                                        value: FFAppState()
                                            .PeopleStat
                                            .weight
                                            .toString(),
                                        unit: 'кг',
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: wrapWithModel(
                                      model: _model.parameterInputModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ParameterInputWidget(
                                        icon: Icon(
                                          Icons.straight_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 18.0,
                                        ),
                                        tone: FlutterFlowTheme.of(context)
                                            .primary,
                                        label: 'Рост',
                                        value: FFAppState()
                                            .PeopleStat
                                            .height
                                            .toString(),
                                        unit: 'см',
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: wrapWithModel(
                                      model: _model.parameterInputModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ParameterInputWidget(
                                        icon: Icon(
                                          Icons.cake_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 18.0,
                                        ),
                                        tone: FlutterFlowTheme.of(context)
                                            .primary,
                                        label: 'Возраст',
                                        value: FFAppState()
                                            .PeopleStat
                                            .age
                                            .toString(),
                                        unit: 'лет',
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: wrapWithModel(
                                      model: _model.parameterInputModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ParameterInputWidget(
                                        icon: Icon(
                                          Icons.fitness_center_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 18.0,
                                        ),
                                        tone: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        label: 'Активность',
                                        value: () {
                                          if (FFAppState()
                                                  .PeopleStat
                                                  .activity ==
                                              MealAction.low) {
                                            return 'Сидячая';
                                          } else if (FFAppState()
                                                  .PeopleStat
                                                  .activity ==
                                              MealAction.lessaverage) {
                                            return 'Лёгкая';
                                          } else if (FFAppState()
                                                  .PeopleStat
                                                  .activity ==
                                              MealAction.average) {
                                            return 'Средняя';
                                          } else if (FFAppState()
                                                  .PeopleStat
                                                  .activity ==
                                              MealAction.moreaverage) {
                                            return 'Подвижная';
                                          } else if (FFAppState()
                                                  .PeopleStat
                                                  .activity ==
                                              MealAction.high) {
                                            return 'Активная';
                                          } else {
                                            return 'Отсутствует';
                                          }
                                        }(),
                                        unit: ' ',
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(24.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: wrapWithModel(
                        model: _model.parameterInputModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: ParameterInputWidget(
                          icon: Icon(
                            Icons.flare,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 18.0,
                          ),
                          tone: FlutterFlowTheme.of(context).tertiary,
                          label: 'Цель',
                          value: () {
                            if (!FFAppState().AutoNutrition) {
                              return 'Задана пользователем';
                            } else if (FFAppState().PeopleStat.target ==
                                MealTarget.extraloss) {
                              return 'Быстрый сброс веса';
                            } else if (FFAppState().PeopleStat.target ==
                                MealTarget.lessloss) {
                              return 'Постепенное похудение';
                            } else if (FFAppState().PeopleStat.target ==
                                MealTarget.average) {
                              return 'Поддержание веса';
                            } else if (FFAppState().PeopleStat.target ==
                                MealTarget.lessget) {
                              return 'Увеличение массы';
                            } else if (FFAppState().PeopleStat.target ==
                                MealTarget.extraget) {
                              return 'Ускоренный набор веса';
                            } else {
                              return '[Не задано]';
                            }
                          }(),
                          unit: '  ',
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
              Container(
                height: 24.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
