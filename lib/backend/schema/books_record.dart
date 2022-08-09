import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'books_record.g.dart';

abstract class BooksRecord implements Built<BooksRecord, BooksRecordBuilder> {
  static Serializer<BooksRecord> get serializer => _$booksRecordSerializer;

  @BuiltValueField(wireName: 'book_name')
  String? get bookName;

  @BuiltValueField(wireName: 'book_id')
  String? get bookId;

  @BuiltValueField(wireName: 'book_author')
  String? get bookAuthor;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BooksRecordBuilder builder) => builder
    ..bookName = ''
    ..bookId = ''
    ..bookAuthor = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('books');

  static Stream<BooksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BooksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BooksRecord._();
  factory BooksRecord([void Function(BooksRecordBuilder) updates]) =
      _$BooksRecord;

  static BooksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBooksRecordData({
  String? bookName,
  String? bookId,
  String? bookAuthor,
}) {
  final firestoreData = serializers.toFirestore(
    BooksRecord.serializer,
    BooksRecord(
      (b) => b
        ..bookName = bookName
        ..bookId = bookId
        ..bookAuthor = bookAuthor,
    ),
  );

  return firestoreData;
}
