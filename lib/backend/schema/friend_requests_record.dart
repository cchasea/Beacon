import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FriendRequestsRecord extends FirestoreRecord {
  FriendRequestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "test" field.
  int? _test;
  int get test => _test ?? 0;
  bool hasTest() => _test != null;

  void _initializeFields() {
    _test = castToType<int>(snapshotData['test']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('friendRequests');

  static Stream<FriendRequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FriendRequestsRecord.fromSnapshot(s));

  static Future<FriendRequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FriendRequestsRecord.fromSnapshot(s));

  static FriendRequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FriendRequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FriendRequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FriendRequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FriendRequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FriendRequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFriendRequestsRecordData({
  int? test,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'test': test,
    }.withoutNulls,
  );

  return firestoreData;
}

class FriendRequestsRecordDocumentEquality
    implements Equality<FriendRequestsRecord> {
  const FriendRequestsRecordDocumentEquality();

  @override
  bool equals(FriendRequestsRecord? e1, FriendRequestsRecord? e2) {
    return e1?.test == e2?.test;
  }

  @override
  int hash(FriendRequestsRecord? e) => const ListEquality().hash([e?.test]);

  @override
  bool isValidKey(Object? o) => o is FriendRequestsRecord;
}
