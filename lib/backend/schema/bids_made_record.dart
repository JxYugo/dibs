import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BidsMadeRecord extends FirestoreRecord {
  BidsMadeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "product_id" field.
  DocumentReference? _productId;
  DocumentReference? get productId => _productId;
  bool hasProductId() => _productId != null;

  // "isBidWon" field.
  bool? _isBidWon;
  bool get isBidWon => _isBidWon ?? false;
  bool hasIsBidWon() => _isBidWon != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _productId = snapshotData['product_id'] as DocumentReference?;
    _isBidWon = snapshotData['isBidWon'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('bids_made')
          : FirebaseFirestore.instance.collectionGroup('bids_made');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('bids_made').doc(id);

  static Stream<BidsMadeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BidsMadeRecord.fromSnapshot(s));

  static Future<BidsMadeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BidsMadeRecord.fromSnapshot(s));

  static BidsMadeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BidsMadeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BidsMadeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BidsMadeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BidsMadeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BidsMadeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBidsMadeRecordData({
  DocumentReference? productId,
  bool? isBidWon,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_id': productId,
      'isBidWon': isBidWon,
    }.withoutNulls,
  );

  return firestoreData;
}

class BidsMadeRecordDocumentEquality implements Equality<BidsMadeRecord> {
  const BidsMadeRecordDocumentEquality();

  @override
  bool equals(BidsMadeRecord? e1, BidsMadeRecord? e2) {
    return e1?.productId == e2?.productId && e1?.isBidWon == e2?.isBidWon;
  }

  @override
  int hash(BidsMadeRecord? e) =>
      const ListEquality().hash([e?.productId, e?.isBidWon]);

  @override
  bool isValidKey(Object? o) => o is BidsMadeRecord;
}
