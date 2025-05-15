import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VerifiedDetailsRecord extends FirestoreRecord {
  VerifiedDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_type" field.
  String? _idType;
  String get idType => _idType ?? '';
  bool hasIdType() => _idType != null;

  // "id_photo" field.
  String? _idPhoto;
  String get idPhoto => _idPhoto ?? '';
  bool hasIdPhoto() => _idPhoto != null;

  // "id_number" field.
  String? _idNumber;
  String get idNumber => _idNumber ?? '';
  bool hasIdNumber() => _idNumber != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "middle_name" field.
  String? _middleName;
  String get middleName => _middleName ?? '';
  bool hasMiddleName() => _middleName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "place_birth" field.
  String? _placeBirth;
  String get placeBirth => _placeBirth ?? '';
  bool hasPlaceBirth() => _placeBirth != null;

  // "nationality" field.
  String? _nationality;
  String get nationality => _nationality ?? '';
  bool hasNationality() => _nationality != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "province" field.
  String? _province;
  String get province => _province ?? '';
  bool hasProvince() => _province != null;

  // "barangay_municipality" field.
  String? _barangayMunicipality;
  String get barangayMunicipality => _barangayMunicipality ?? '';
  bool hasBarangayMunicipality() => _barangayMunicipality != null;

  // "zip_code" field.
  int? _zipCode;
  int get zipCode => _zipCode ?? 0;
  bool hasZipCode() => _zipCode != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _idType = snapshotData['id_type'] as String?;
    _idPhoto = snapshotData['id_photo'] as String?;
    _idNumber = snapshotData['id_number'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _middleName = snapshotData['middle_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _placeBirth = snapshotData['place_birth'] as String?;
    _nationality = snapshotData['nationality'] as String?;
    _city = snapshotData['city'] as String?;
    _province = snapshotData['province'] as String?;
    _barangayMunicipality = snapshotData['barangay_municipality'] as String?;
    _zipCode = castToType<int>(snapshotData['zip_code']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('verified_details')
          : FirebaseFirestore.instance.collectionGroup('verified_details');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('verified_details').doc(id);

  static Stream<VerifiedDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VerifiedDetailsRecord.fromSnapshot(s));

  static Future<VerifiedDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VerifiedDetailsRecord.fromSnapshot(s));

  static VerifiedDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VerifiedDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VerifiedDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VerifiedDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VerifiedDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VerifiedDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVerifiedDetailsRecordData({
  String? idType,
  String? idPhoto,
  String? idNumber,
  String? firstName,
  String? middleName,
  String? lastName,
  String? placeBirth,
  String? nationality,
  String? city,
  String? province,
  String? barangayMunicipality,
  int? zipCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_type': idType,
      'id_photo': idPhoto,
      'id_number': idNumber,
      'first_name': firstName,
      'middle_name': middleName,
      'last_name': lastName,
      'place_birth': placeBirth,
      'nationality': nationality,
      'city': city,
      'province': province,
      'barangay_municipality': barangayMunicipality,
      'zip_code': zipCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class VerifiedDetailsRecordDocumentEquality
    implements Equality<VerifiedDetailsRecord> {
  const VerifiedDetailsRecordDocumentEquality();

  @override
  bool equals(VerifiedDetailsRecord? e1, VerifiedDetailsRecord? e2) {
    return e1?.idType == e2?.idType &&
        e1?.idPhoto == e2?.idPhoto &&
        e1?.idNumber == e2?.idNumber &&
        e1?.firstName == e2?.firstName &&
        e1?.middleName == e2?.middleName &&
        e1?.lastName == e2?.lastName &&
        e1?.placeBirth == e2?.placeBirth &&
        e1?.nationality == e2?.nationality &&
        e1?.city == e2?.city &&
        e1?.province == e2?.province &&
        e1?.barangayMunicipality == e2?.barangayMunicipality &&
        e1?.zipCode == e2?.zipCode;
  }

  @override
  int hash(VerifiedDetailsRecord? e) => const ListEquality().hash([
        e?.idType,
        e?.idPhoto,
        e?.idNumber,
        e?.firstName,
        e?.middleName,
        e?.lastName,
        e?.placeBirth,
        e?.nationality,
        e?.city,
        e?.province,
        e?.barangayMunicipality,
        e?.zipCode
      ]);

  @override
  bool isValidKey(Object? o) => o is VerifiedDetailsRecord;
}
