import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalendarEventRecord extends FirestoreRecord {
  CalendarEventRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "Shared" field.
  bool? _shared;
  bool get shared => _shared ?? false;
  bool hasShared() => _shared != null;

  // "SharedWith" field.
  List<String>? _sharedWith;
  List<String> get sharedWith => _sharedWith ?? const [];
  bool hasSharedWith() => _sharedWith != null;

  // "Completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "isEvent" field.
  bool? _isEvent;
  bool get isEvent => _isEvent ?? false;
  bool hasIsEvent() => _isEvent != null;

  // "StartTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "EndTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _details = snapshotData['Details'] as String?;
    _shared = snapshotData['Shared'] as bool?;
    _sharedWith = getDataList(snapshotData['SharedWith']);
    _completed = snapshotData['Completed'] as bool?;
    _date = snapshotData['Date'] as DateTime?;
    _user = snapshotData['User'] as DocumentReference?;
    _isEvent = snapshotData['isEvent'] as bool?;
    _startTime = snapshotData['StartTime'] as DateTime?;
    _endTime = snapshotData['EndTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calendar_event');

  static Stream<CalendarEventRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CalendarEventRecord.fromSnapshot(s));

  static Future<CalendarEventRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CalendarEventRecord.fromSnapshot(s));

  static CalendarEventRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CalendarEventRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CalendarEventRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CalendarEventRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CalendarEventRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CalendarEventRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCalendarEventRecordData({
  String? name,
  String? details,
  bool? shared,
  bool? completed,
  DateTime? date,
  DocumentReference? user,
  bool? isEvent,
  DateTime? startTime,
  DateTime? endTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Details': details,
      'Shared': shared,
      'Completed': completed,
      'Date': date,
      'User': user,
      'isEvent': isEvent,
      'StartTime': startTime,
      'EndTime': endTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class CalendarEventRecordDocumentEquality
    implements Equality<CalendarEventRecord> {
  const CalendarEventRecordDocumentEquality();

  @override
  bool equals(CalendarEventRecord? e1, CalendarEventRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.details == e2?.details &&
        e1?.shared == e2?.shared &&
        listEquality.equals(e1?.sharedWith, e2?.sharedWith) &&
        e1?.completed == e2?.completed &&
        e1?.date == e2?.date &&
        e1?.user == e2?.user &&
        e1?.isEvent == e2?.isEvent &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime;
  }

  @override
  int hash(CalendarEventRecord? e) => const ListEquality().hash([
        e?.name,
        e?.details,
        e?.shared,
        e?.sharedWith,
        e?.completed,
        e?.date,
        e?.user,
        e?.isEvent,
        e?.startTime,
        e?.endTime
      ]);

  @override
  bool isValidKey(Object? o) => o is CalendarEventRecord;
}
