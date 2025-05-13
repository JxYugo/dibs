import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "isFeatured" field.
  bool? _isFeatured;
  bool get isFeatured => _isFeatured ?? false;
  bool hasIsFeatured() => _isFeatured != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  bool hasSize() => _size != null;

  // "is_popular" field.
  bool? _isPopular;
  bool get isPopular => _isPopular ?? false;
  bool hasIsPopular() => _isPopular != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "current_bid" field.
  double? _currentBid;
  double get currentBid => _currentBid ?? 0.0;
  bool hasCurrentBid() => _currentBid != null;

  // "seller_id" field.
  String? _sellerId;
  String get sellerId => _sellerId ?? '';
  bool hasSellerId() => _sellerId != null;

  // "buyer_id" field.
  String? _buyerId;
  String get buyerId => _buyerId ?? '';
  bool hasBuyerId() => _buyerId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "time_left" field.
  DateTime? _timeLeft;
  DateTime? get timeLeft => _timeLeft;
  bool hasTimeLeft() => _timeLeft != null;

  // "seller_rating" field.
  double? _sellerRating;
  double get sellerRating => _sellerRating ?? 0.0;
  bool hasSellerRating() => _sellerRating != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "isBidding" field.
  bool? _isBidding;
  bool get isBidding => _isBidding ?? false;
  bool hasIsBidding() => _isBidding != null;

  // "current_bidder" field.
  String? _currentBidder;
  String get currentBidder => _currentBidder ?? '';
  bool hasCurrentBidder() => _currentBidder != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _isFeatured = snapshotData['isFeatured'] as bool?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _images = getDataList(snapshotData['images']);
    _size = snapshotData['size'] as String?;
    _isPopular = snapshotData['is_popular'] as bool?;
    _category = snapshotData['category'] as String?;
    _currentBid = castToType<double>(snapshotData['current_bid']);
    _sellerId = snapshotData['seller_id'] as String?;
    _buyerId = snapshotData['buyer_id'] as String?;
    _status = snapshotData['status'] as String?;
    _paymentMethod = snapshotData['payment_method'] as String?;
    _endTime = snapshotData['end_time'] as DateTime?;
    _timeLeft = snapshotData['time_left'] as DateTime?;
    _sellerRating = castToType<double>(snapshotData['seller_rating']);
    _condition = snapshotData['condition'] as String?;
    _stock = castToType<int>(snapshotData['stock']);
    _isBidding = snapshotData['isBidding'] as bool?;
    _currentBidder = snapshotData['current_bidder'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? name,
  String? description,
  double? price,
  bool? isFeatured,
  DateTime? createdTime,
  String? size,
  bool? isPopular,
  String? category,
  double? currentBid,
  String? sellerId,
  String? buyerId,
  String? status,
  String? paymentMethod,
  DateTime? endTime,
  DateTime? timeLeft,
  double? sellerRating,
  String? condition,
  int? stock,
  bool? isBidding,
  String? currentBidder,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'isFeatured': isFeatured,
      'created_time': createdTime,
      'size': size,
      'is_popular': isPopular,
      'category': category,
      'current_bid': currentBid,
      'seller_id': sellerId,
      'buyer_id': buyerId,
      'status': status,
      'payment_method': paymentMethod,
      'end_time': endTime,
      'time_left': timeLeft,
      'seller_rating': sellerRating,
      'condition': condition,
      'stock': stock,
      'isBidding': isBidding,
      'current_bidder': currentBidder,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.isFeatured == e2?.isFeatured &&
        e1?.createdTime == e2?.createdTime &&
        listEquality.equals(e1?.images, e2?.images) &&
        e1?.size == e2?.size &&
        e1?.isPopular == e2?.isPopular &&
        e1?.category == e2?.category &&
        e1?.currentBid == e2?.currentBid &&
        e1?.sellerId == e2?.sellerId &&
        e1?.buyerId == e2?.buyerId &&
        e1?.status == e2?.status &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.endTime == e2?.endTime &&
        e1?.timeLeft == e2?.timeLeft &&
        e1?.sellerRating == e2?.sellerRating &&
        e1?.condition == e2?.condition &&
        e1?.stock == e2?.stock &&
        e1?.isBidding == e2?.isBidding &&
        e1?.currentBidder == e2?.currentBidder;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.isFeatured,
        e?.createdTime,
        e?.images,
        e?.size,
        e?.isPopular,
        e?.category,
        e?.currentBid,
        e?.sellerId,
        e?.buyerId,
        e?.status,
        e?.paymentMethod,
        e?.endTime,
        e?.timeLeft,
        e?.sellerRating,
        e?.condition,
        e?.stock,
        e?.isBidding,
        e?.currentBidder
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
