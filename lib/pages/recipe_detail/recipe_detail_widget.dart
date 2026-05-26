import '/components/button/button_widget.dart';
import '/components/info_tag/info_tag_widget.dart';
import '/components/ingridient_list/ingridient_list_widget.dart';
import '/components/step_preview/step_preview_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'recipe_detail_model.dart';
export 'recipe_detail_model.dart';

class RecipeDetailWidget extends StatefulWidget {
  const RecipeDetailWidget({super.key});

  static String routeName = 'RecipeDetail';
  static String routePath = '/recipeDetail';

  @override
  State<RecipeDetailWidget> createState() => _RecipeDetailWidgetState();
}

class _RecipeDetailWidgetState extends State<RecipeDetailWidget> {
  late RecipeDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecipeDetailModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          alignment: AlignmentDirectional(-1.0, -1.0),
          children: [
            SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 300.0,
                            child: Stack(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              children: [
                                CachedNetworkImage(
                                  fadeInDuration: Duration(milliseconds: 0),
                                  fadeOutDuration: Duration(milliseconds: 0),
                                  imageUrl:
                                      'https://dimg.dreamflow.cloud/v1/image/delicious%20cooked%20pasta%20with%20basil%20and%20tomatoes',
                                  height: 300.0,
                                  fit: BoxFit.cover,
                                  alignment: Alignment(0.0, 0.0),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.all(24.0),
                                      child: Container(
                                        child: FlutterFlowIconButton(
                                          borderRadius: 9999.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .surface80,
                                          icon: Icon(
                                            Icons.arrow_back_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            context.goNamed(
                                                RecipesWidget.routeName);
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, -1.0),
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.all(24.0),
                                      child: Container(
                                        child: FlutterFlowIconButton(
                                          borderRadius: 9999.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .surface80,
                                          icon: Icon(
                                            Icons.favorite_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 24.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Container(
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          Colors.transparent
                                        ],
                                        stops: [0.0, 1.0],
                                        begin: AlignmentDirectional(0.0, 1.0),
                                        end: AlignmentDirectional(0, -1.0),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Паста Примавера',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            font: GoogleFonts.manrope(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                            lineHeight: 1.3,
                                          ),
                                    ),
                                    Text(
                                      'Классическое итальянское блюдо с сезонными овощами и легким соусом.',
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
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                            lineHeight: 1.55,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                                Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    wrapWithModel(
                                      model: _model.infoTagModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: InfoTagWidget(
                                        icon: Icon(
                                          Icons.schedule_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 16.0,
                                        ),
                                        label: '30 мин',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.infoTagModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: InfoTagWidget(
                                        icon: Icon(
                                          Icons.local_fire_department_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 16.0,
                                        ),
                                        label: '450 ккал',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.infoTagModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: InfoTagWidget(
                                        icon: Icon(
                                          Icons.restaurant_menu_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 16.0,
                                        ),
                                        label: 'Средне',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.infoTagModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: InfoTagWidget(
                                        icon: Icon(
                                          Icons.groups_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 16.0,
                                        ),
                                        label: '2 порции',
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 16.0,
                                  thickness: 1.0,
                                  indent: 0.0,
                                  endIndent: 0.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Ингредиенты',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                font: GoogleFonts.manrope(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                        ),
                                        Text(
                                          '12 позиций',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font: GoogleFonts.manrope(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        wrapWithModel(
                                          model: _model.ingredientItemModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: IngridientListWidget(
                                            name: 'Спагетти',
                                            qty: '250',
                                            unit: 'г',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.ingredientItemModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: IngridientListWidget(
                                            name: 'Черри томаты',
                                            qty: '150',
                                            unit: 'г',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.ingredientItemModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: IngridientListWidget(
                                            name: 'Цукини',
                                            qty: '1',
                                            unit: 'шт',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.ingredientItemModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: IngridientListWidget(
                                            name: 'Пармезан',
                                            qty: '50',
                                            unit: 'г',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.ingredientItemModel5,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: IngridientListWidget(
                                            name: 'Оливковое масло',
                                            qty: '2',
                                            unit: 'ст.л.',
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 0.0)),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                                Container(
                                  height: 16.0,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Приготовление',
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
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    wrapWithModel(
                                      model: _model.stepPreviewModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StepPreviewWidget(
                                        hasTimer: false,
                                        index: '1',
                                        text:
                                            'Поставьте воду для пасты закипать. Посолите по вкусу.',
                                        timer: 'Timer',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.stepPreviewModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StepPreviewWidget(
                                        hasTimer: true,
                                        index: '2',
                                        text:
                                            'Нарежьте овощи небольшими кубиками. Обжарьте цукини на оливковом масле до золотистого цвета.',
                                        timer: '8',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.stepPreviewModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StepPreviewWidget(
                                        hasTimer: true,
                                        index: '3',
                                        text:
                                            'Добавьте томаты и тушите еще 5 минут на медленном огне.',
                                        timer: '5',
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                          Container(
                            height: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 16.0, 24.0, 16.0),
                      child: Container(
                        child: Container(
                          height: 67.0,
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                          IngredientCheckWidget.routeName);
                                    },
                                    child: wrapWithModel(
                                      model: _model.buttonModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        content: 'Начать готовку',
                                        icon: Icon(
                                          Icons.play_arrow_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .onPrimary,
                                          size: 16.0,
                                        ),
                                        iconPresent: true,
                                        iconEndPresent: false,
                                        variant: 'primary',
                                        size: 'large',
                                        fullWidth: true,
                                        loading: false,
                                        disabled: false,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              if (FFAppConstants.TrueValue)
                                Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 24.0,
                                    buttonSize: 40.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryContainer,
                                    icon: Icon(
                                      Icons.calendar_today_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .onSecondaryContainer,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      context.goNamed(MealPlanWidget.routeName);
                                    },
                                  ),
                                ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
