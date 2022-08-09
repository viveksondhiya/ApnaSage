import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'issued_book_record.g.dart';

abstract class IssuedBookRecord
    implements Built<IssuedBookRecord, IssuedBookRecordBuilder> {
  static Serializer<IssuedBookRecord> get serializer =>
      _$issuedBookRecordSerializer;

  @BuiltValueField(wireName: 'book_ref')
  DocumentReference? get bookRef;

  @BuiltValueField(wireName: 'issued_id')
  String? get issuedId;

  @BuiltValueField(wireName: 'time_created')
  DateTime? get timeCreated;

  @BuiltValueField(wireName: 'enrollment_no')
  String? get enrollmentNo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(IssuedBookRecordBuilder builder) => builder
    ..issuedId = ''
    ..enrollmentNo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('issuedBook');

  static Stream<IssuedBookRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<IssuedBookRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  IssuedBookRecord._();
  factory IssuedBookRecord([void Function(IssuedBookRecordBuilder) updates]) =
      _$IssuedBookRecord;

  static IssuedBookRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createIssuedBookRecordData({
  DocumentReference? bookRef,
  String? issuedId,
  DateTime? timeCreated,
  String? enrollmentNo,
}) {
  final firestoreData = serializers.toFirestore(
    IssuedBookRecord.serializer,
    IssuedBookRecord(
      (i) => i
        ..bookRef = bookRef
        ..issuedId = issuedId
        ..timeCreated = timeCreated
        ..enrollmentNo = enrollmentNo,
    ),
  );

  return firestoreData;
}
