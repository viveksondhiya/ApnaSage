// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AttendanceRecord> _$attendanceRecordSerializer =
    new _$AttendanceRecordSerializer();

class _$AttendanceRecordSerializer
    implements StructuredSerializer<AttendanceRecord> {
  @override
  final Iterable<Type> types = const [AttendanceRecord, _$AttendanceRecord];
  @override
  final String wireName = 'AttendanceRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AttendanceRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.studentRef;
    if (value != null) {
      result
        ..add('studentRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.lectureRef;
    if (value != null) {
      result
        ..add('lecture_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  AttendanceRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttendanceRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'studentRef':
          result.studentRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'lecture_ref':
          result.lectureRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$AttendanceRecord extends AttendanceRecord {
  @override
  final DocumentReference<Object?>? studentRef;
  @override
  final DocumentReference<Object?>? lectureRef;
  @override
  final DateTime? date;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AttendanceRecord(
          [void Function(AttendanceRecordBuilder)? updates]) =>
      (new AttendanceRecordBuilder()..update(updates))._build();

  _$AttendanceRecord._(
      {this.studentRef, this.lectureRef, this.date, this.ffRef})
      : super._();

  @override
  AttendanceRecord rebuild(void Function(AttendanceRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttendanceRecordBuilder toBuilder() =>
      new AttendanceRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttendanceRecord &&
        studentRef == other.studentRef &&
        lectureRef == other.lectureRef &&
        date == other.date &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, studentRef.hashCode), lectureRef.hashCode),
            date.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttendanceRecord')
          ..add('studentRef', studentRef)
          ..add('lectureRef', lectureRef)
          ..add('date', date)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AttendanceRecordBuilder
    implements Builder<AttendanceRecord, AttendanceRecordBuilder> {
  _$AttendanceRecord? _$v;

  DocumentReference<Object?>? _studentRef;
  DocumentReference<Object?>? get studentRef => _$this._studentRef;
  set studentRef(DocumentReference<Object?>? studentRef) =>
      _$this._studentRef = studentRef;

  DocumentReference<Object?>? _lectureRef;
  DocumentReference<Object?>? get lectureRef => _$this._lectureRef;
  set lectureRef(DocumentReference<Object?>? lectureRef) =>
      _$this._lectureRef = lectureRef;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AttendanceRecordBuilder() {
    AttendanceRecord._initializeBuilder(this);
  }

  AttendanceRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _studentRef = $v.studentRef;
      _lectureRef = $v.lectureRef;
      _date = $v.date;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttendanceRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttendanceRecord;
  }

  @override
  void update(void Function(AttendanceRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttendanceRecord build() => _build();

  _$AttendanceRecord _build() {
    final _$result = _$v ??
        new _$AttendanceRecord._(
            studentRef: studentRef,
            lectureRef: lectureRef,
            date: date,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
