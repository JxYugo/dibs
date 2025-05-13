import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for search_textfield widget.
  FocusNode? searchTextfieldFocusNode;
  TextEditingController? searchTextfieldTextController;
  String? Function(BuildContext, String?)?
      searchTextfieldTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTextfieldFocusNode?.dispose();
    searchTextfieldTextController?.dispose();

    tabBarController?.dispose();
  }
}
