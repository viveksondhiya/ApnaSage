import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'lecture_record.g.dart';

abstract class LectureRecord
    implements Built<LectureRecord, LectureRecordBuilder> {
  static Serializer<LectureRecord> get serializer => _$lectureRecordSerializer;

  @BuiltValueField(wireName: 'Date')
  DateTime? get date;

  String? get shift;

  @BuiltValueField(wireName: 'course_code')
  String? get courseCode;

  @BuiltValueField(wireName: 'teacher_id')
  DocumentReference? get teacherId;

  String? get id;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LectureRecordBuilder builder) => builder
    ..shift = ''
    ..courseCode = ''
    ..id = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Lecture');

  static Stream<LectureRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LectureRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LectureRecord._();
  factory LectureRecord([void Function(LectureRecordBuilder) updates]) =
      _$LectureRecord;

  static LectureRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLectureRecordData({
  DateTime? date,
  String? shift,
  String? courseCode,
  DocumentReference? teacherId,
  String? id,
}) {
  final firestoreData = serializers.toFirestore(
    LectureRecord.serializer,
    LectureRecord(
      (l) => l
        ..date = date
        ..shift = shift
        ..courseCode = courseCode
        ..teacherId = teacherId
        ..id = id,
    ),
  );

  return firestoreData;
}
