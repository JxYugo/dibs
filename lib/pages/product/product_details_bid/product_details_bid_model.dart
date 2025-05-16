import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'product_details_bid_widget.dart' show ProductDetailsBidWidget;
import 'package:flutter/material.dart';

class ProductDetailsBidModel extends FlutterFlowModel<ProductDetailsBidWidget> {
  ///  Local state fields for this page.

  double bidAmount = 0.0;

  int indexCounter = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  ProductsRecord? productDinBidsMade2;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  ProductsRecord? productDinBidsMade;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
