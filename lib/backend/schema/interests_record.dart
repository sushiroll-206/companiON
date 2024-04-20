import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class InterestsRecord extends FirestoreRecord {
  InterestsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "interest" field.
  String? _interest;
  String get interest => _interest ?? '';
  bool hasInterest() => _interest != null;

  void _initializeFields() {
    _interest = snapshotData['interest'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Interests');

  static Stream<InterestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InterestsRecord.fromSnapshot(s));

  static Future<InterestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InterestsRecord.fromSnapshot(s));

  static InterestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InterestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InterestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InterestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InterestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InterestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInterestsRecordData({
  String? interest,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'interest': interest,
    }.withoutNulls,
  );

  return firestoreData;
}

class InterestsRecordDocumentEquality implements Equality<InterestsRecord> {
  const InterestsRecordDocumentEquality();

  @override
  bool equals(InterestsRecord? e1, InterestsRecord? e2) {
    return e1?.interest == e2?.interest;
  }

  @override
  int hash(InterestsRecord? e) => const ListEquality().hash([e?.interest]);

  @override
  bool isValidKey(Object? o) => o is InterestsRecord;
}
