// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecture_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LectureRecord> _$lectureRecordSerializer =
    new _$LectureRecordSerializer();

class _$LectureRecordSerializer implements StructuredSerializer<LectureRecord> {
  @override
  final Iterable<Type> types = const [LectureRecord, _$LectureRecord];
  @override
  final String wireName = 'LectureRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LectureRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.shift;
    if (value != null) {
      result
        ..add('shift')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.courseCode;
    if (value != null) {
      result
        ..add('course_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.teacherId;
    if (value != null) {
      result
        ..add('teacher_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
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
  LectureRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LectureRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'shift':
          result.shift = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'course_code':
          result.courseCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'teacher_id':
          result.teacherId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
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

class _$LectureRecord extends LectureRecord {
  @override
  final DateTime? date;
  @override
  final String? shift;
  @override
  final String? courseCode;
  @override
  final DocumentReference<Object?>? teacherId;
  @override
  final String? id;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LectureRecord([void Function(LectureRecordBuilder)? updates]) =>
      (new LectureRecordBuilder()..update(updates))._build();

  _$LectureRecord._(
      {this.date,
      this.shift,
      this.courseCode,
      this.teacherId,
      this.id,
      this.ffRef})
      : super._();

  @override
  LectureRecord rebuild(void Function(LectureRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LectureRecordBuilder toBuilder() => new LectureRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LectureRecord &&
        date == other.date &&
        shift == other.shift &&
        courseCode == other.courseCode &&
        teacherId == other.teacherId &&
        id == other.id &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, date.hashCode), shift.hashCode),
                    courseCode.hashCode),
                teacherId.hashCode),
            id.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LectureRecord')
          ..add('date', date)
          ..add('shift', shift)
          ..add('courseCode', courseCode)
          ..add('teacherId', teacherId)
          ..add('id', id)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LectureRecordBuilder
    implements Builder<LectureRecord, LectureRecordBuilder> {
  _$LectureRecord? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _shift;
  String? get shift => _$this._shift;
  set shift(String? shift) => _$this._shift = shift;

  String? _courseCode;
  String? get courseCode => _$this._courseCode;
  set courseCode(String? courseCode) => _$this._courseCode = courseCode;

  DocumentReference<Object?>? _teacherId;
  DocumentReference<Object?>? get teacherId => _$this._teacherId;
  set teacherId(DocumentReference<Object?>? teacherId) =>
      _$this._teacherId = teacherId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LectureRecordBuilder() {
    LectureRecord._initializeBuilder(this);
  }

  LectureRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _shift = $v.shift;
      _courseCode = $v.courseCode;
      _teacherId = $v.teacherId;
      _id = $v.id;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LectureRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LectureRecord;
  }

  @override
  void update(void Function(LectureRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LectureRecord build() => _build();

  _$LectureRecord _build() {
    final _$result = _$v ??
        new _$LectureRecord._(
            date: date,
            shift: shift,
            courseCode: courseCode,
            teacherId: teacherId,
            id: id,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
