import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cart_widget.dart' show CartWidget;
import 'package:flutter/material.dart';

class CartModel extends FlutterFlowModel<CartWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> cartProductIDsList = [];
  void addToCartProductIDsList(DocumentReference item) =>
      cartProductIDsList.add(item);
  void removeFromCartProductIDsList(DocumentReference item) =>
      cartProductIDsList.remove(item);
  void removeAtIndexFromCartProductIDsList(int index) =>
      cartProductIDsList.removeAt(index);
  void insertAtIndexInCartProductIDsList(int index, DocumentReference item) =>
      cartProductIDsList.insert(index, item);
  void updateCartProductIDsListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      cartProductIDsList[index] = updateFn(cartProductIDsList[index]);

  int cartItemsListIndex = 0;

  bool? isExpandable;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
