import '/flutter_flow/flutter_flow_credit_card_form.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'checkout2_widget.dart' show Checkout2Widget;
import 'package:flutter/material.dart';

class Checkout2Model extends FlutterFlowModel<Checkout2Widget> {
  ///  Local state fields for this page.

  double deliveryFee = 25.0;

  String? paymentMethod;

  int indexCounter = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for CreditCardForm widget.
  final creditCardFormKey = GlobalKey<FormState>();
  CreditCardModel creditCardInfo = emptyCreditCard();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
