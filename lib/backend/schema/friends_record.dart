import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FriendsRecord extends FirestoreRecord {
  FriendsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "UserA" field.
  String? _userA;
  String get userA => _userA ?? '';
  bool hasUserA() => _userA != null;

  // "UserB" field.
  String? _userB;
  String get userB => _userB ?? '';
  bool hasUserB() => _userB != null;

  // "FriendID" field.
  String? _friendID;
  String get friendID => _friendID ?? '';
  bool hasFriendID() => _friendID != null;

  // "UserAName" field.
  String? _userAName;
  String get userAName => _userAName ?? '';
  bool hasUserAName() => _userAName != null;

  // "UserBName" field.
  String? _userBName;
  String get userBName => _userBName ?? '';
  bool hasUserBName() => _userBName != null;

  void _initializeFields() {
    _userA = snapshotData['UserA'] as String?;
    _userB = snapshotData['UserB'] as String?;
    _friendID = snapshotData['FriendID'] as String?;
    _userAName = snapshotData['UserAName'] as String?;
    _userBName = snapshotData['UserBName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('friends');

  static Stream<FriendsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FriendsRecord.fromSnapshot(s));

  static Future<FriendsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FriendsRecord.fromSnapshot(s));

  static FriendsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FriendsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FriendsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FriendsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FriendsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FriendsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFriendsRecordData({
  String? userA,
  String? userB,
  String? friendID,
  String? userAName,
  String? userBName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UserA': userA,
      'UserB': userB,
      'FriendID': friendID,
      'UserAName': userAName,
      'UserBName': userBName,
    }.withoutNulls,
  );

  return firestoreData;
}

class FriendsRecordDocumentEquality implements Equality<FriendsRecord> {
  const FriendsRecordDocumentEquality();

  @override
  bool equals(FriendsRecord? e1, FriendsRecord? e2) {
    return e1?.userA == e2?.userA &&
        e1?.userB == e2?.userB &&
        e1?.friendID == e2?.friendID &&
        e1?.userAName == e2?.userAName &&
        e1?.userBName == e2?.userBName;
  }

  @override
  int hash(FriendsRecord? e) => const ListEquality()
      .hash([e?.userA, e?.userB, e?.friendID, e?.userAName, e?.userBName]);

  @override
  bool isValidKey(Object? o) => o is FriendsRecord;
}
