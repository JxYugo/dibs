import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderedItemsRecord extends FirestoreRecord {
  OrderedItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "added_at" field.
  DateTime? _addedAt;
  DateTime? get addedAt => _addedAt;
  bool hasAddedAt() => _addedAt != null;

  // "product_id" field.
  DocumentReference? _productId;
  DocumentReference? get productId => _productId;
  bool hasProductId() => _productId != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "vendor" field.
  String? _vendor;
  String get vendor => _vendor ?? '';
  bool hasVendor() => _vendor != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "address_selected" field.
  DocumentReference? _addressSelected;
  DocumentReference? get addressSelected => _addressSelected;
  bool hasAddressSelected() => _addressSelected != null;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _addedAt = snapshotData['added_at'] as DateTime?;
    _productId = snapshotData['product_id'] as DocumentReference?;
    _productName = snapshotData['product_name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _vendor = snapshotData['vendor'] as String?;
    _image = snapshotData['image'] as String?;
    _addressSelected = snapshotData['address_selected'] as DocumentReference?;
    _paymentMethod = snapshotData['payment_method'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ordered_items')
          : FirebaseFirestore.instance.collectionGroup('ordered_items');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('ordered_items').doc(id);

  static Stream<OrderedItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderedItemsRecord.fromSnapshot(s));

  static Future<OrderedItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderedItemsRecord.fromSnapshot(s));

  static OrderedItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrderedItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderedItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderedItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderedItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderedItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderedItemsRecordData({
  DateTime? addedAt,
  DocumentReference? productId,
  String? productName,
  double? price,
  String? vendor,
  String? image,
  DocumentReference? addressSelected,
  String? paymentMethod,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'added_at': addedAt,
      'product_id': productId,
      'product_name': productName,
      'price': price,
      'vendor': vendor,
      'image': image,
      'address_selected': addressSelected,
      'payment_method': paymentMethod,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderedItemsRecordDocumentEquality
    implements Equality<OrderedItemsRecord> {
  const OrderedItemsRecordDocumentEquality();

  @override
  bool equals(OrderedItemsRecord? e1, OrderedItemsRecord? e2) {
    return e1?.addedAt == e2?.addedAt &&
        e1?.productId == e2?.productId &&
        e1?.productName == e2?.productName &&
        e1?.price == e2?.price &&
        e1?.vendor == e2?.vendor &&
        e1?.image == e2?.image &&
        e1?.addressSelected == e2?.addressSelected &&
        e1?.paymentMethod == e2?.paymentMethod;
  }

  @override
  int hash(OrderedItemsRecord? e) => const ListEquality().hash([
        e?.addedAt,
        e?.productId,
        e?.productName,
        e?.price,
        e?.vendor,
        e?.image,
        e?.addressSelected,
        e?.paymentMethod
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderedItemsRecord;
}
