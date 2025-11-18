import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NPSCollectionRecord extends FirestoreRecord {
  NPSCollectionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  bool hasFeedback() => _feedback != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "userEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  void _initializeFields() {
    _rating = castToType<int>(snapshotData['rating']);
    _feedback = snapshotData['feedback'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _userEmail = snapshotData['userEmail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('NPS_collection');

  static Stream<NPSCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NPSCollectionRecord.fromSnapshot(s));

  static Future<NPSCollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NPSCollectionRecord.fromSnapshot(s));

  static NPSCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NPSCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NPSCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NPSCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NPSCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NPSCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNPSCollectionRecordData({
  int? rating,
  String? feedback,
  DateTime? timestamp,
  DocumentReference? userRef,
  String? userEmail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'rating': rating,
      'feedback': feedback,
      'timestamp': timestamp,
      'userRef': userRef,
      'userEmail': userEmail,
    }.withoutNulls,
  );

  return firestoreData;
}

class NPSCollectionRecordDocumentEquality
    implements Equality<NPSCollectionRecord> {
  const NPSCollectionRecordDocumentEquality();

  @override
  bool equals(NPSCollectionRecord? e1, NPSCollectionRecord? e2) {
    return e1?.rating == e2?.rating &&
        e1?.feedback == e2?.feedback &&
        e1?.timestamp == e2?.timestamp &&
        e1?.userRef == e2?.userRef &&
        e1?.userEmail == e2?.userEmail;
  }

  @override
  int hash(NPSCollectionRecord? e) => const ListEquality()
      .hash([e?.rating, e?.feedback, e?.timestamp, e?.userRef, e?.userEmail]);

  @override
  bool isValidKey(Object? o) => o is NPSCollectionRecord;
}
