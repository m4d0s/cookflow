import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shop_item_model.dart';
export 'shop_item_model.dart';

class ShopItemWidget extends StatefulWidget {
  const ShopItemWidget({
    super.key,
    required this.item,
  });

  final ShopItemStruct? item;

  @override
  State<ShopItemWidget> createState() => _ShopItemWidgetState();
}

class _ShopItemWidgetState extends State<ShopItemWidget> {
  late ShopItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopItemModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if ((widget.item!.productId > 0) ||
          (FFAppState()
                  .BuyList
                  .where((e) => e.id == widget.item?.id)
                  .toList()
                  .length >
              0)) {
        _model.isChanging = FFAppConstants.FalseValue;
        safeSetState(() {});
      } else {
        _model.isChanging = FFAppConstants.TrueValue;
        safeSetState(() {});
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(8.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: Stack(
                alignment: AlignmentDirectional(-1.0, 1.0),
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if ((widget.item!.productId < 1) &&
                          !FFAppState().ShopNewItem)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            icon: Icon(
                              Icons.edit,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              FFAppState().BuySelect = widget.item!;
                              FFAppState().ShopNewItem =
                                  FFAppConstants.TrueValue;
                              _model.updatePage(() {});
                            },
                          ),
                        ),
                      Expanded(
                        child: Material(
                          color: Colors.transparent,
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).alternate,
                            ),
                            child: CheckboxListTile(
                              value: _model.checkboxListTileValue ??=
                                  widget.item!.bought,
                              onChanged: (newValue) async {
                                safeSetState(() =>
                                    _model.checkboxListTileValue = newValue!);
                                if (newValue!) {
                                  FFAppState().BuySelect = widget.item!;
                                  _model.updatePage(() {});
                                  await actions.updateShopItem(
                                    FFAppConstants.FalseValue,
                                    FFAppConstants.TrueValue,
                                  );
                                } else {
                                  FFAppState().BuySelect = widget.item!;
                                  _model.updatePage(() {});
                                  await actions.updateShopItem(
                                    FFAppConstants.FalseValue,
                                    FFAppConstants.FalseValue,
                                  );
                                }
                              },
                              title: Text(
                                valueOrDefault<String>(
                                  widget.item?.name,
                                  '[Продукт без названия]',
                                ),
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
                              subtitle: Text(
                                widget.item!.quantity.count > 0.0
                                    ? '${widget.item?.quantity.count.toString()} ${widget.item?.quantity.quantity}'
                                    : '[не указано]',
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
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Куплено: ${widget.item?.bought.toString()}',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(1.0, -1.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 2.0, 0.0),
            child: Container(
              width: 26.0,
              height: 26.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Visibility(
                visible: !_model.isChanging,
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await actions.deleteStruct(
                      widget.item!.id,
                      Structs.shop,
                    );
                    FFAppState().BuySelect = ShopItemStruct();
                    FFAppState().update(() {});
                  },
                  child: Icon(
                    Icons.close,
                    color: FlutterFlowTheme.of(context).error,
                    size: 18.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-1.0, -1.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 0.0),
            child: Container(
              decoration: BoxDecoration(),
            ),
          ),
        ),
      ],
    );
  }
}
