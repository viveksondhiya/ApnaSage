import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'letter_record.g.dart';

abstract class LetterRecord
    implements Built<LetterRecord, LetterRecordBuilder> {
  static Serializer<LetterRecord> get serializer => _$letterRecordSerializer;

  String? get subject;

  String? get body;

  String? get to;

  DocumentReference? get from;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LetterRecordBuilder builder) => builder
    ..subject = ''
    ..body = ''
    ..to = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('letter');

  static Stream<LetterRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LetterRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LetterRecord._();
  factory LetterRecord([void Function(LetterRecordBuilder) updates]) =
      _$LetterRecord;

  static LetterRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLetterRecordData({
  String? subject,
  String? body,
  String? to,
  DocumentReference? from,
}) {
  final firestoreData = serializers.toFirestore(
    LetterRecord.serializer,
    LetterRecord(
      (l) => l
        ..subject = subject
        ..body = body
        ..to = to
        ..from = from,
    ),
  );

  return firestoreData;
}
