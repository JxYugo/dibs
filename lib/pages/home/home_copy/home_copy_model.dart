import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_copy_widget.dart' show HomeCopyWidget;
import 'package:flutter/material.dart';

class HomeCopyModel extends FlutterFlowModel<HomeCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for search_textfield widget.
  FocusNode? searchTextfieldFocusNode;
  TextEditingController? searchTextfieldTextController;
  String? Function(BuildContext, String?)?
      searchTextfieldTextControllerValidator;
  List<ProductsRecord> simpleSearchResults = [];
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Stores action output result for [AdMob - Show Interstitial Ad] action in IconButton widget.
  bool? interstitialAdSuccess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTextfieldFocusNode?.dispose();
    searchTextfieldTextController?.dispose();

    tabBarController?.dispose();
  }
}
