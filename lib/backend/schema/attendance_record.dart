import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'attendance_record.g.dart';

abstract class AttendanceRecord
    implements Built<AttendanceRecord, AttendanceRecordBuilder> {
  static Serializer<AttendanceRecord> get serializer =>
      _$attendanceRecordSerializer;

  DocumentReference? get studentRef;

  @BuiltValueField(wireName: 'lecture_ref')
  DocumentReference? get lectureRef;

  @BuiltValueField(wireName: 'Date')
  DateTime? get date;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AttendanceRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Attendance');

  static Stream<AttendanceRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AttendanceRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AttendanceRecord._();
  factory AttendanceRecord([void Function(AttendanceRecordBuilder) updates]) =
      _$AttendanceRecord;

  static AttendanceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAttendanceRecordData({
  DocumentReference? studentRef,
  DocumentReference? lectureRef,
  DateTime? date,
}) {
  final firestoreData = serializers.toFirestore(
    AttendanceRecord.serializer,
    AttendanceRecord(
      (a) => a
        ..studentRef = studentRef
        ..lectureRef = lectureRef
        ..date = date,
    ),
  );

  return firestoreData;
}
