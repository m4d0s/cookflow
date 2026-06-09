import '/backend/schema/enums/enums.dart';
import '/components/recipe_card2/recipe_card2_widget.dart';
import '/components/u_text_field/u_text_field_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'meal_select_model.dart';
export 'meal_select_model.dart';

class MealSelectWidget extends StatefulWidget {
  const MealSelectWidget({super.key});

  static String routeName = 'MealSelect';
  static String routePath = '/mealSelect';

  @override
  State<MealSelectWidget> createState() => _MealSelectWidgetState();
}

class _MealSelectWidgetState extends State<MealSelectWidget> {
  late MealSelectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MealSelectModel());
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
              context.pop();
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 40.0, 0.0),
              child: Text(
                'Добавьте блюдо',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.manrope(
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).onPrimary,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 16.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              wrapWithModel(
                                model: _model.textFieldModel,
                                updateCallback: () => safeSetState(() {}),
                                child: UTextFieldWidget(
                                  hint: 'Поиск рецептов...',
                                  value: FFAppState().SearchQuery,
                                  leadingIcon: Icon(
                                    Icons.search_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 16.0,
                                  ),
                                  variant: Textfield.ghost,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FlutterFlowIconButton(
                                    borderRadius: 16.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).surface80,
                                    icon: Icon(
                                      Icons.favorite_border_rounded,
                                      color: FFAppState().SearchFavorite
                                          ? FlutterFlowTheme.of(context).error
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      FFAppState().SearchFavorite =
                                          !(FFAppState().SearchFavorite ??
                                              true);
                                      safeSetState(() {});
                                    },
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: FlutterFlowDropDown<Food>(
                                          controller: _model
                                                  .dropdownValueController1 ??=
                                              FormFieldController<Food>(
                                            _model.dropdownValue1 ??=
                                                FFAppState().CategorySelect,
                                          ),
                                          options: List<Food>.from(FFAppState()
                                              .CategoryList
                                              .map((e) => e.category)
                                              .withoutNulls
                                              .toList()
                                              .take(7)
                                              .toList()),
                                          optionLabels: FFAppState()
                                              .CategoryList
                                              .map((e) => e.name)
                                              .toList()
                                              .take(7)
                                              .toList(),
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropdownValue1 = val),
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.35,
                                          height: 40.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText: 'Категория',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 1.0,
                                          borderRadius: FFAppConstants.Padding2
                                              .toDouble(),
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  valueOrDefault<double>(
                                                    FFAppConstants.Padding2
                                                        .toDouble(),
                                                    0.0,
                                                  ),
                                                  0.0,
                                                  valueOrDefault<double>(
                                                    FFAppConstants.Padding2
                                                        .toDouble(),
                                                    0.0,
                                                  ),
                                                  0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                          labelText: 'Сложность',
                                          labelTextStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.manrope(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: FlutterFlowDropDown<Hardness>(
                                          controller: _model
                                                  .dropdownValueController2 ??=
                                              FormFieldController<Hardness>(
                                            _model.dropdownValue2 ??=
                                                FFAppState().HardSelect,
                                          ),
                                          options: List<Hardness>.from(
                                              FFAppState()
                                                  .HardList
                                                  .map((e) => e.difficult)
                                                  .withoutNulls
                                                  .toList()
                                                  .take(3)
                                                  .toList()),
                                          optionLabels: FFAppState()
                                              .HardList
                                              .map((e) => e.name)
                                              .toList()
                                              .take(3)
                                              .toList(),
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropdownValue2 = val),
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.35,
                                          height: 40.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText: 'Сложность',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 1.0,
                                          borderRadius: FFAppConstants.Padding2
                                              .toDouble(),
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  valueOrDefault<double>(
                                                    FFAppConstants.Padding2
                                                        .toDouble(),
                                                    0.0,
                                                  ),
                                                  0.0,
                                                  valueOrDefault<double>(
                                                    FFAppConstants.Padding2
                                                        .toDouble(),
                                                    0.0,
                                                  ),
                                                  0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                          labelText: 'Сложность',
                                          labelTextStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.manrope(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                        ),
                                      ),
                                    ].divide(SizedBox(
                                        width: FFAppConstants.Padding1
                                            .toDouble())),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.75,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Builder(
                              builder: (context) {
                                final recipe = FFAppState()
                                    .RecipeList
                                    .map((e) => e)
                                    .toList();

                                return SingleChildScrollView(
                                  primary: false,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(recipe.length,
                                        (recipeIndex) {
                                      final recipeItem = recipe[recipeIndex];
                                      return Visibility(
                                        visible: (FFAppState().SearchFavorite
                                                ? recipeItem.isFavorite
                                                : true) &&
                                            (_model.dropdownValue1 == Food.all
                                                ? true
                                                : (recipeItem.foodType ==
                                                    _model.dropdownValue1)) &&
                                            (_model.dropdownValue2 ==
                                                    Hardness.all
                                                ? true
                                                : (recipeItem.hardType ==
                                                    _model.dropdownValue2)) &&
                                            (_model
                                                            .textFieldModel
                                                            .inputTextController
                                                            .text ==
                                                        ''
                                                ? true
                                                : functions.substringFind(
                                                    recipeItem.name,
                                                    FFAppState().SearchQuery)),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().RecipeSelect =
                                                recipeItem;
                                            FFAppState().update(() {});
                                            if (Navigator.of(context)
                                                .canPop()) {
                                              context.pop();
                                            }
                                            context.pushNamed(
                                                MealPreviewWidget.routeName);
                                          },
                                          child: wrapWithModel(
                                            model: _model.recipeCard2Models
                                                .getModel(
                                              recipeItem.id.toString(),
                                              recipeIndex,
                                            ),
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: RecipeCard2Widget(
                                              key: Key(
                                                'Keyon1_${recipeItem.id.toString()}',
                                              ),
                                              imgDesc: recipeItem.picture,
                                              recipeDetails: recipeItem,
                                            ),
                                          ),
                                        ),
                                      );
                                    }).divide(
                                      SizedBox(height: 8.0),
                                      filterFn: (recipeIndex) {
                                        final recipeItem = recipe[recipeIndex];
                                        return (FFAppState().SearchFavorite
                                                ? recipeItem.isFavorite
                                                : true) &&
                                            (_model.dropdownValue1 == Food.all
                                                ? true
                                                : (recipeItem.foodType ==
                                                    _model.dropdownValue1)) &&
                                            (_model.dropdownValue2 ==
                                                    Hardness.all
                                                ? true
                                                : (recipeItem.hardType ==
                                                    _model.dropdownValue2)) &&
                                            (_model
                                                            .textFieldModel
                                                            .inputTextController
                                                            .text ==
                                                        ''
                                                ? true
                                                : functions.substringFind(
                                                    recipeItem.name,
                                                    FFAppState().SearchQuery));
                                      },
                                    ).around(SizedBox(height: 8.0)),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
