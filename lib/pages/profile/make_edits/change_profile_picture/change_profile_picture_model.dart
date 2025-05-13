import '/flutter_flow/flutter_flow_util.dart';
import 'change_profile_picture_widget.dart' show ChangeProfilePictureWidget;
import 'package:flutter/material.dart';

class ChangeProfilePictureModel
    extends FlutterFlowModel<ChangeProfilePictureWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
