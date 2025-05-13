import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressRecord extends FirestoreRecord {
  AddressRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "addressName" field.
  String? _addressName;
  String get addressName => _addressName ?? '';
  bool hasAddressName() => _addressName != null;

  // "houseNumber" field.
  String? _houseNumber;
  String get houseNumber => _houseNumber ?? '';
  bool hasHouseNumber() => _houseNumber != null;

  // "street" field.
  String? _street;
  String get street => _street ?? '';
  bool hasStreet() => _street != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "stateProvince" field.
  String? _stateProvince;
  String get stateProvince => _stateProvince ?? '';
  bool hasStateProvince() => _stateProvince != null;

  // "zipCode" field.
  String? _zipCode;
  String get zipCode => _zipCode ?? '';
  bool hasZipCode() => _zipCode != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _addressName = snapshotData['addressName'] as String?;
    _houseNumber = snapshotData['houseNumber'] as String?;
    _street = snapshotData['street'] as String?;
    _city = snapshotData['city'] as String?;
    _stateProvince = snapshotData['stateProvince'] as String?;
    _zipCode = snapshotData['zipCode'] as String?;
    _country = snapshotData['country'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('address')
          : FirebaseFirestore.instance.collectionGroup('address');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('address').doc(id);

  static Stream<AddressRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AddressRecord.fromSnapshot(s));

  static Future<AddressRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AddressRecord.fromSnapshot(s));

  static AddressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AddressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddressRecordData({
  String? addressName,
  String? houseNumber,
  String? street,
  String? city,
  String? stateProvince,
  String? zipCode,
  String? country,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'addressName': addressName,
      'houseNumber': houseNumber,
      'street': street,
      'city': city,
      'stateProvince': stateProvince,
      'zipCode': zipCode,
      'country': country,
    }.withoutNulls,
  );

  return firestoreData;
}

class AddressRecordDocumentEquality implements Equality<AddressRecord> {
  const AddressRecordDocumentEquality();

  @override
  bool equals(AddressRecord? e1, AddressRecord? e2) {
    return e1?.addressName == e2?.addressName &&
        e1?.houseNumber == e2?.houseNumber &&
        e1?.street == e2?.street &&
        e1?.city == e2?.city &&
        e1?.stateProvince == e2?.stateProvince &&
        e1?.zipCode == e2?.zipCode &&
        e1?.country == e2?.country;
  }

  @override
  int hash(AddressRecord? e) => const ListEquality().hash([
        e?.addressName,
        e?.houseNumber,
        e?.street,
        e?.city,
        e?.stateProvince,
        e?.zipCode,
        e?.country
      ]);

  @override
  bool isValidKey(Object? o) => o is AddressRecord;
}
