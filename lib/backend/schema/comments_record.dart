import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  // "user_profile_img" field.
  String? _userProfileImg;
  String get userProfileImg => _userProfileImg ?? '';
  bool hasUserProfileImg() => _userProfileImg != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _comment = snapshotData['comment'] as String?;
    _ref = snapshotData['ref'] as DocumentReference?;
    _userProfileImg = snapshotData['user_profile_img'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  String? name,
  DateTime? createdAt,
  String? comment,
  DocumentReference? ref,
  String? userProfileImg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'created_at': createdAt,
      'comment': comment,
      'ref': ref,
      'user_profile_img': userProfileImg,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.createdAt == e2?.createdAt &&
        e1?.comment == e2?.comment &&
        e1?.ref == e2?.ref &&
        e1?.userProfileImg == e2?.userProfileImg;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality()
      .hash([e?.name, e?.createdAt, e?.comment, e?.ref, e?.userProfileImg]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
