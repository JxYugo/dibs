import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_listing_for_sale_widget.dart' show ProductListingForSaleWidget;
import 'package:flutter/material.dart';

class ProductListingForSaleModel
    extends FlutterFlowModel<ProductListingForSaleWidget> {
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
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    productDescriptionFocusNode?.dispose();
    productDescriptionTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    stockFocusNode?.dispose();
    stockTextController?.dispose();
  }
}
