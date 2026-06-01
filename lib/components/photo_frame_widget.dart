import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'photo_frame_model.dart';
export 'photo_frame_model.dart';

class PhotoFrameWidget extends StatefulWidget {
  const PhotoFrameWidget({
    super.key,
    int? width,
    int? height,
  })  : this.width = width ?? 64,
        this.height = height ?? 64;

  final int width;
  final int height;

  @override
  State<PhotoFrameWidget> createState() => _PhotoFrameWidgetState();
}

class _PhotoFrameWidgetState extends State<PhotoFrameWidget> {
  late PhotoFrameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhotoFrameModel());
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
      width: widget.width.toDouble(),
      height: widget.height.toDouble(),
      constraints: BoxConstraints(
        minWidth: 64.0,
        minHeight: 64.0,
      ),
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            valueOrDefault<double>(
              FFAppConstants.Padding1.toDouble(),
              0.0,
            ),
            valueOrDefault<double>(
              FFAppConstants.Padding1.toDouble(),
              0.0,
            ),
            valueOrDefault<double>(
              FFAppConstants.Padding1.toDouble(),
              0.0,
            ),
            valueOrDefault<double>(
              FFAppConstants.Padding1.toDouble(),
              0.0,
            )),
        child: Container(
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
            padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: widget.width.toDouble(),
                    height: widget.height.toDouble(),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Opacity(
                      opacity: 0.5,
                      child: FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.add_a_photo,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          final selectedMedia =
                              await selectMediaWithSourceBottomSheet(
                            context: context,
                            allowPhoto: true,
                          );
                          if (selectedMedia != null &&
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
                            safeSetState(() =>
                                _model.isDataUploading_uploadDataRwe = true);
                            var selectedUploadedFiles = <FFUploadedFile>[];

                            try {
                              selectedUploadedFiles = selectedMedia
                                  .map((m) => FFUploadedFile(
                                        name: m.storagePath.split('/').last,
                                        bytes: m.bytes,
                                        height: m.dimensions?.height,
                                        width: m.dimensions?.width,
                                        blurHash: m.blurHash,
                                        originalFilename: m.originalFilename,
                                      ))
                                  .toList();
                            } finally {
                              _model.isDataUploading_uploadDataRwe = false;
                            }
                            if (selectedUploadedFiles.length ==
                                selectedMedia.length) {
                              safeSetState(() {
                                _model.uploadedLocalFile_uploadDataRwe =
                                    selectedUploadedFiles.first;
                              });
                            } else {
                              safeSetState(() {});
                              return;
                            }
                          }
                        },
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    FFAppState().SelectedRecipe.picture,
                    width: widget.width.toDouble(),
                    height: widget.height.toDouble(),
                    fit: BoxFit.fill,
                    cacheWidth: 256,
                    cacheHeight: 256,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
