// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issued_book_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssuedBookRecord> _$issuedBookRecordSerializer =
    new _$IssuedBookRecordSerializer();

class _$IssuedBookRecordSerializer
    implements StructuredSerializer<IssuedBookRecord> {
  @override
  final Iterable<Type> types = const [IssuedBookRecord, _$IssuedBookRecord];
  @override
  final String wireName = 'IssuedBookRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, IssuedBookRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.bookRef;
    if (value != null) {
      result
        ..add('book_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.issuedId;
    if (value != null) {
      result
        ..add('issued_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timeCreated;
    if (value != null) {
      result
        ..add('time_created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.enrollmentNo;
    if (value != null) {
      result
        ..add('enrollment_no')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  IssuedBookRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssuedBookRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'book_ref':
          result.bookRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'issued_id':
          result.issuedId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time_created':
          result.timeCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'enrollment_no':
          result.enrollmentNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$IssuedBookRecord extends IssuedBookRecord {
  @override
  final DocumentReference<Object?>? bookRef;
  @override
  final String? issuedId;
  @override
  final DateTime? timeCreated;
  @override
  final String? enrollmentNo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$IssuedBookRecord(
          [void Function(IssuedBookRecordBuilder)? updates]) =>
      (new IssuedBookRecordBuilder()..update(updates))._build();

  _$IssuedBookRecord._(
      {this.bookRef,
      this.issuedId,
      this.timeCreated,
      this.enrollmentNo,
      this.ffRef})
      : super._();

  @override
  IssuedBookRecord rebuild(void Function(IssuedBookRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssuedBookRecordBuilder toBuilder() =>
      new IssuedBookRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssuedBookRecord &&
        bookRef == other.bookRef &&
        issuedId == other.issuedId &&
        timeCreated == other.timeCreated &&
        enrollmentNo == other.enrollmentNo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, bookRef.hashCode), issuedId.hashCode),
                timeCreated.hashCode),
            enrollmentNo.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IssuedBookRecord')
          ..add('bookRef', bookRef)
          ..add('issuedId', issuedId)
          ..add('timeCreated', timeCreated)
          ..add('enrollmentNo', enrollmentNo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class IssuedBookRecordBuilder
    implements Builder<IssuedBookRecord, IssuedBookRecordBuilder> {
  _$IssuedBookRecord? _$v;

  DocumentReference<Object?>? _bookRef;
  DocumentReference<Object?>? get bookRef => _$this._bookRef;
  set bookRef(DocumentReference<Object?>? bookRef) => _$this._bookRef = bookRef;

  String? _issuedId;
  String? get issuedId => _$this._issuedId;
  set issuedId(String? issuedId) => _$this._issuedId = issuedId;

  DateTime? _timeCreated;
  DateTime? get timeCreated => _$this._timeCreated;
  set timeCreated(DateTime? timeCreated) => _$this._timeCreated = timeCreated;

  String? _enrollmentNo;
  String? get enrollmentNo => _$this._enrollmentNo;
  set enrollmentNo(String? enrollmentNo) => _$this._enrollmentNo = enrollmentNo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  IssuedBookRecordBuilder() {
    IssuedBookRecord._initializeBuilder(this);
  }

  IssuedBookRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bookRef = $v.bookRef;
      _issuedId = $v.issuedId;
      _timeCreated = $v.timeCreated;
      _enrollmentNo = $v.enrollmentNo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssuedBookRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IssuedBookRecord;
  }

  @override
  void update(void Function(IssuedBookRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IssuedBookRecord build() => _build();

  _$IssuedBookRecord _build() {
    final _$result = _$v ??
        new _$IssuedBookRecord._(
            bookRef: bookRef,
            issuedId: issuedId,
            timeCreated: timeCreated,
            enrollmentNo: enrollmentNo,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
