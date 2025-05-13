import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'product_detail_sell_widget.dart' show ProductDetailSellWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ProductDetailSellModel extends FlutterFlowModel<ProductDetailSellWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
