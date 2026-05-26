import '/flutter_flow/flutter_flow_util.dart';
import 'photo_frame_widget.dart' show PhotoFrameWidget;
import 'package:flutter/material.dart';

class PhotoFrameModel extends FlutterFlowModel<PhotoFrameWidget> {
  ///  Local state fields for this component.

  String photo = 'https://picsum.photos/seed/867/600';

  bool unsee = true;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataRwe = false;
  FFUploadedFile uploadedLocalFile_uploadDataRwe =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
