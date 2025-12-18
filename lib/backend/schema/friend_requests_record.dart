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

  // "fromUser" field.
  String? _fromUser;
  String get fromUser => _fromUser ?? '';
  bool hasFromUser() => _fromUser != null;

  // "toUser" field.
  String? _toUser;
  String get toUser => _toUser ?? '';
  bool hasToUser() => _toUser != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "fromUserName" field.
  String? _fromUserName;
  String get fromUserName => _fromUserName ?? '';
  bool hasFromUserName() => _fromUserName != null;

  void _initializeFields() {
    _test = castToType<int>(snapshotData['test']);
    _fromUser = snapshotData['fromUser'] as String?;
    _toUser = snapshotData['toUser'] as String?;
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _fromUserName = snapshotData['fromUserName'] as String?;
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
  String? fromUser,
  String? toUser,
  String? status,
  DateTime? createdAt,
  String? fromUserName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'test': test,
      'fromUser': fromUser,
      'toUser': toUser,
      'status': status,
      'createdAt': createdAt,
      'fromUserName': fromUserName,
    }.withoutNulls,
  );

  return firestoreData;
}

class FriendRequestsRecordDocumentEquality
    implements Equality<FriendRequestsRecord> {
  const FriendRequestsRecordDocumentEquality();

  @override
  bool equals(FriendRequestsRecord? e1, FriendRequestsRecord? e2) {
    return e1?.test == e2?.test &&
        e1?.fromUser == e2?.fromUser &&
        e1?.toUser == e2?.toUser &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt &&
        e1?.fromUserName == e2?.fromUserName;
  }

  @override
  int hash(FriendRequestsRecord? e) => const ListEquality().hash([
        e?.test,
        e?.fromUser,
        e?.toUser,
        e?.status,
        e?.createdAt,
        e?.fromUserName
      ]);

  @override
  bool isValidKey(Object? o) => o is FriendRequestsRecord;
}
