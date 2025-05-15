import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "cart_product_ids" field.
  List<DocumentReference>? _cartProductIds;
  List<DocumentReference> get cartProductIds => _cartProductIds ?? const [];
  bool hasCartProductIds() => _cartProductIds != null;

  // "address_id" field.
  DocumentReference? _addressId;
  DocumentReference? get addressId => _addressId;
  bool hasAddressId() => _addressId != null;

  // "total_price" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "time_ordered" field.
  DateTime? _timeOrdered;
  DateTime? get timeOrdered => _timeOrdered;
  bool hasTimeOrdered() => _timeOrdered != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _paymentMethod = snapshotData['payment_method'] as String?;
    _cartProductIds = getDataList(snapshotData['cart_product_ids']);
    _addressId = snapshotData['address_id'] as DocumentReference?;
    _totalPrice = castToType<double>(snapshotData['total_price']);
    _timeOrdered = snapshotData['time_ordered'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('orders')
          : FirebaseFirestore.instance.collectionGroup('orders');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('orders').doc(id);

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  String? paymentMethod,
  DocumentReference? addressId,
  double? totalPrice,
  DateTime? timeOrdered,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'payment_method': paymentMethod,
      'address_id': addressId,
      'total_price': totalPrice,
      'time_ordered': timeOrdered,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.paymentMethod == e2?.paymentMethod &&
        listEquality.equals(e1?.cartProductIds, e2?.cartProductIds) &&
        e1?.addressId == e2?.addressId &&
        e1?.totalPrice == e2?.totalPrice &&
        e1?.timeOrdered == e2?.timeOrdered;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.paymentMethod,
        e?.cartProductIds,
        e?.addressId,
        e?.totalPrice,
        e?.timeOrdered
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
