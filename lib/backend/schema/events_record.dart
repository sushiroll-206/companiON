import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    super.reference,
    super.data,
  ) {
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

  // "companions_joined" field.
  int? _companionsJoined;
  int get companionsJoined => _companionsJoined ?? 0;
  bool hasCompanionsJoined() => _companionsJoined != null;

  // "date_start" field.
  DateTime? _dateStart;
  DateTime? get dateStart => _dateStart;
  bool hasDateStart() => _dateStart != null;

  // "date_end" field.
  DateTime? _dateEnd;
  DateTime? get dateEnd => _dateEnd;
  bool hasDateEnd() => _dateEnd != null;

  // "hosted" field.
  String? _hosted;
  String get hosted => _hosted ?? '';
  bool hasHosted() => _hosted != null;

  // "also" field.
  String? _also;
  String get also => _also ?? '';
  bool hasAlso() => _also != null;

  // "address" field.
  LatLng? _address;
  LatLng? get address => _address;
  bool hasAddress() => _address != null;

  // "contact_type" field.
  String? _contactType;
  String get contactType => _contactType ?? '';
  bool hasContactType() => _contactType != null;

  // "contact_info" field.
  String? _contactInfo;
  String get contactInfo => _contactInfo ?? '';
  bool hasContactInfo() => _contactInfo != null;

  // "companion_limit" field.
  int? _companionLimit;
  int get companionLimit => _companionLimit ?? 0;
  bool hasCompanionLimit() => _companionLimit != null;

  // "event_image" field.
  String? _eventImage;
  String get eventImage => _eventImage ?? '';
  bool hasEventImage() => _eventImage != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "attendees" field.
  List<DocumentReference>? _attendees;
  List<DocumentReference> get attendees => _attendees ?? const [];
  bool hasAttendees() => _attendees != null;

  // "location_string" field.
  String? _locationString;
  String get locationString => _locationString ?? '';
  bool hasLocationString() => _locationString != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _companionsJoined = castToType<int>(snapshotData['companions_joined']);
    _dateStart = snapshotData['date_start'] as DateTime?;
    _dateEnd = snapshotData['date_end'] as DateTime?;
    _hosted = snapshotData['hosted'] as String?;
    _also = snapshotData['also'] as String?;
    _address = snapshotData['address'] as LatLng?;
    _contactType = snapshotData['contact_type'] as String?;
    _contactInfo = snapshotData['contact_info'] as String?;
    _companionLimit = castToType<int>(snapshotData['companion_limit']);
    _eventImage = snapshotData['event_image'] as String?;
    _startTime = snapshotData['start_time'] as DateTime?;
    _endTime = snapshotData['end_time'] as DateTime?;
    _attendees = getDataList(snapshotData['attendees']);
    _locationString = snapshotData['location_string'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? name,
  String? description,
  int? companionsJoined,
  DateTime? dateStart,
  DateTime? dateEnd,
  String? hosted,
  String? also,
  LatLng? address,
  String? contactType,
  String? contactInfo,
  int? companionLimit,
  String? eventImage,
  DateTime? startTime,
  DateTime? endTime,
  String? locationString,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'companions_joined': companionsJoined,
      'date_start': dateStart,
      'date_end': dateEnd,
      'hosted': hosted,
      'also': also,
      'address': address,
      'contact_type': contactType,
      'contact_info': contactInfo,
      'companion_limit': companionLimit,
      'event_image': eventImage,
      'start_time': startTime,
      'end_time': endTime,
      'location_string': locationString,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.companionsJoined == e2?.companionsJoined &&
        e1?.dateStart == e2?.dateStart &&
        e1?.dateEnd == e2?.dateEnd &&
        e1?.hosted == e2?.hosted &&
        e1?.also == e2?.also &&
        e1?.address == e2?.address &&
        e1?.contactType == e2?.contactType &&
        e1?.contactInfo == e2?.contactInfo &&
        e1?.companionLimit == e2?.companionLimit &&
        e1?.eventImage == e2?.eventImage &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        listEquality.equals(e1?.attendees, e2?.attendees) &&
        e1?.locationString == e2?.locationString;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.companionsJoined,
        e?.dateStart,
        e?.dateEnd,
        e?.hosted,
        e?.also,
        e?.address,
        e?.contactType,
        e?.contactInfo,
        e?.companionLimit,
        e?.eventImage,
        e?.startTime,
        e?.endTime,
        e?.attendees,
        e?.locationString
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
