import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_listing_for_bidding_sale_widget.dart'
    show ProductListingForBiddingSaleWidget;
import 'package:flutter/material.dart';

class ProductListingForBiddingSaleModel
    extends FlutterFlowModel<ProductListingForBiddingSaleWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  // State field(s) for product_name widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  // State field(s) for product_description widget.
  FocusNode? productDescriptionFocusNode;
  TextEditingController? productDescriptionTextController;
  String? Function(BuildContext, String?)?
      productDescriptionTextControllerValidator;
  // State field(s) for starting_bid widget.
  FocusNode? startingBidFocusNode;
  TextEditingController? startingBidTextController;
  String? Function(BuildContext, String?)? startingBidTextControllerValidator;
  // State field(s) for goal_bid widget.
  FocusNode? goalBidFocusNode;
  TextEditingController? goalBidTextController;
  String? Function(BuildContext, String?)? goalBidTextControllerValidator;
  // State field(s) for stock widget.
  FocusNode? stockFocusNode;
  TextEditingController? stockTextController;
  String? Function(BuildContext, String?)? stockTextControllerValidator;
  // State field(s) for select_size widget.
  String? selectSizeValue;
  FormFieldController<String>? selectSizeValueController;
  // State field(s) for select_quality widget.
  String? selectQualityValue;
  FormFieldController<String>? selectQualityValueController;
  // State field(s) for select_category widget.
  String? selectCategoryValue;
  FormFieldController<String>? selectCategoryValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    productDescriptionFocusNode?.dispose();
    productDescriptionTextController?.dispose();

    startingBidFocusNode?.dispose();
    startingBidTextController?.dispose();

    goalBidFocusNode?.dispose();
    goalBidTextController?.dispose();

    stockFocusNode?.dispose();
    stockTextController?.dispose();
  }
}
