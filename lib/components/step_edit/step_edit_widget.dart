import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
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

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.stepUploadAgain = await actions.base64ToFFUploadedFile(
        widget.step?.pictureBase64,
      );
    });

    _model.inputTextController1 ??=
        TextEditingController(text: widget.step?.desc);
    _model.inputFocusNode1 ??= FocusNode();
    _model.inputFocusNode1!.addListener(
      () async {
        await actions.updateStep(
          widget.step!,
          widget.step?.queueId,
          _model.inputTextController1.text,
          _model.inputTextController2.text,
          widget.step?.timer,
          _model.imageBase64,
        );
      },
    );
    _model.inputTextController2 ??=
        TextEditingController(text: widget.step?.tip);
    _model.inputFocusNode2 ??= FocusNode();
    _model.inputFocusNode2!.addListener(
      () async {
        await actions.updateStep(
          widget.step!,
          widget.step?.queueId,
          _model.inputTextController1.text,
          _model.inputTextController2.text,
          widget.step?.timer,
          _model.imageBase64,
        );
      },
    );
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
              Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                          child: Visibility(
                            visible: widget.step!.queueId > 1,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (widget.step!.queueId > 1) {
                                  await actions.moveStepUp(
                                    widget.step!,
                                  );
                                }

                                FFAppState().update(() {});
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.arrow_upward,
                                      color: valueOrDefault<Color>(
                                        widget.step!.queueId > 1
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                      size: 20.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 8.0, 8.0),
                                    child: Text(
                                      'Поднять',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: valueOrDefault<Color>(
                                              widget.step!.queueId > 1
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : FlutterFlowTheme.of(context)
                                                      .alternate,
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ].divide(SizedBox(
                                    width: FFAppConstants.Padding0.toDouble())),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await actions.deleteStruct(
                                widget.step!.queueId,
                                Structs.step,
                              );
                              _model.updatePage(() {});
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 0.0, 8.0),
                                  child: Text(
                                    'Удалить',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: Icon(
                                    Icons.close,
                                    color: FlutterFlowTheme.of(context).error,
                                    size: 20.0,
                                  ),
                                ),
                              ].divide(SizedBox(
                                  width: FFAppConstants.Padding0.toDouble())),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
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
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
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
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.imageBase64 = await actions.imageToBase64(
                          FFAppConstants.PhotoWidth,
                          FFAppConstants.PhotoHeight,
                          FFAppConstants.PhotoQuality,
                        );
                        _model.fFUploadImage =
                            await actions.base64ToFFUploadedFile(
                          _model.imageBase64,
                        );
                        await actions.updateStep(
                          widget.step!,
                          widget.step?.queueId,
                          widget.step?.desc,
                          widget.step?.tip,
                          widget.step?.timer,
                          _model.imageBase64,
                        );
                        safeSetState(() {});

                        safeSetState(() {});
                      },
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          Icon(
                            Icons.add_a_photo,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 48.0,
                          ),
                          if (widget.step?.pictureBase64 != null &&
                              widget.step?.pictureBase64 != '')
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.memory(
                                  _model.stepUploadAgain?.bytes ??
                                      Uint8List.fromList([]),
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                  alignment: Alignment(0.0, 0.0),
                                ),
                              ),
                            ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.memory(
                                _model.fFUploadImage?.bytes ??
                                    Uint8List.fromList([]),
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                                alignment: Alignment(0.0, 0.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 1.0),
                child: Text(
                  'Рекомендуется фото альбомной ориентации',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        fontSize: 11.0,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius:
                          BorderRadius.circular(valueOrDefault<double>(
                        FFAppConstants.Padding2.toDouble(),
                        0.0,
                      )),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(valueOrDefault<double>(
                        FFAppConstants.Padding2.toDouble(),
                        0.0,
                      )),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Icon(
                              Icons.edit,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: TextFormField(
                                controller: _model.inputTextController1,
                                focusNode: _model.inputFocusNode1,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: 'Описание шага',
                                  hintStyle: FlutterFlowTheme.of(context)
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
                                            .accent3,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        lineHeight: 1.55,
                                      ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                ),
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
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.55,
                                    ),
                                maxLines: 4,
                                validator: _model.inputTextController1Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(
                            width: FFAppConstants.Padding1.toDouble())),
                      ),
                    ),
                  ),
                  Container(
                    height: 80.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius:
                          BorderRadius.circular(valueOrDefault<double>(
                        FFAppConstants.Padding2.toDouble(),
                        0.0,
                      )),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(valueOrDefault<double>(
                        FFAppConstants.Padding2.toDouble(),
                        0.0,
                      )),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Icon(
                              Icons.auto_awesome_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: TextFormField(
                                controller: _model.inputTextController2,
                                focusNode: _model.inputFocusNode2,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: 'Совет по готовке (необязательно)',
                                  hintStyle: FlutterFlowTheme.of(context)
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
                                            .accent3,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        lineHeight: 1.55,
                                      ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                ),
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
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.55,
                                    ),
                                maxLines: 2,
                                validator: _model.inputTextController2Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(
                            width: FFAppConstants.Padding1.toDouble())),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: FFAppConstants.Padding0.toDouble())),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(valueOrDefault<double>(
                    FFAppConstants.FrameRound.toDouble(),
                    0.0,
                  )),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.timer_sharp,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          Text(
                            'Таймер (мин)',
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
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ].divide(SizedBox(
                            width: FFAppConstants.Padding1.toDouble())),
                      ),
                      Container(
                        width: 100.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
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
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                        ),
                      ),
                    ].divide(
                        SizedBox(width: FFAppConstants.Padding1.toDouble())),
                  ),
                ),
              ),
            ].divide(SizedBox(height: FFAppConstants.Padding1.toDouble())),
          ),
        ),
      ),
    );
  }
}
