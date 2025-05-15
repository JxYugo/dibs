import '/flutter_flow/flutter_flow_util.dart';
import 'order_details_widget.dart' show OrderDetailsWidget;
import 'package:flutter/material.dart';

class OrderDetailsModel extends FlutterFlowModel<OrderDetailsWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> productsInCart = [];
  void addToProductsInCart(DocumentReference item) => productsInCart.add(item);
  void removeFromProductsInCart(DocumentReference item) =>
      productsInCart.remove(item);
  void removeAtIndexFromProductsInCart(int index) =>
      productsInCart.removeAt(index);
  void insertAtIndexInProductsInCart(int index, DocumentReference item) =>
      productsInCart.insert(index, item);
  void updateProductsInCartAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      productsInCart[index] = updateFn(productsInCart[index]);

  int indexCounter = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
