import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "added_at" field.
  DateTime? _addedAt;
  DateTime? get addedAt => _addedAt;
  bool hasAddedAt() => _addedAt != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "product_images" field.
  List<String>? _productImages;
  List<String> get productImages => _productImages ?? const [];
  bool hasProductImages() => _productImages != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "vendor" field.
  String? _vendor;
  String get vendor => _vendor ?? '';
  bool hasVendor() => _vendor != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _addedAt = snapshotData['added_at'] as DateTime?;
    _productName = snapshotData['product_name'] as String?;
    _productImages = getDataList(snapshotData['product_images']);
    _price = castToType<double>(snapshotData['price']);
    _vendor = snapshotData['vendor'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('cart')
          : FirebaseFirestore.instance.collectionGroup('cart');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('cart').doc(id);

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  DateTime? addedAt,
  String? productName,
  double? price,
  String? vendor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'added_at': addedAt,
      'product_name': productName,
      'price': price,
      'vendor': vendor,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    const listEquality = ListEquality();
    return e1?.addedAt == e2?.addedAt &&
        e1?.productName == e2?.productName &&
        listEquality.equals(e1?.productImages, e2?.productImages) &&
        e1?.price == e2?.price &&
        e1?.vendor == e2?.vendor;
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash(
      [e?.addedAt, e?.productName, e?.productImages, e?.price, e?.vendor]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
