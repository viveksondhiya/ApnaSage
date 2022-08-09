// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationRecord> _$notificationRecordSerializer =
    new _$NotificationRecordSerializer();

class _$NotificationRecordSerializer
    implements StructuredSerializer<NotificationRecord> {
  @override
  final Iterable<Type> types = const [NotificationRecord, _$NotificationRecord];
  @override
  final String wireName = 'NotificationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.to;
    if (value != null) {
      result
        ..add('to')
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
    value = object.isDone;
    if (value != null) {
      result
        ..add('is_done')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.letterRef;
    if (value != null) {
      result
        ..add('letter_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  NotificationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time_created':
          result.timeCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'is_done':
          result.isDone = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'letter_ref':
          result.letterRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$NotificationRecord extends NotificationRecord {
  @override
  final String? message;
  @override
  final String? type;
  @override
  final String? to;
  @override
  final DateTime? timeCreated;
  @override
  final bool? isDone;
  @override
  final DocumentReference<Object?>? letterRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NotificationRecord(
          [void Function(NotificationRecordBuilder)? updates]) =>
      (new NotificationRecordBuilder()..update(updates))._build();

  _$NotificationRecord._(
      {this.message,
      this.type,
      this.to,
      this.timeCreated,
      this.isDone,
      this.letterRef,
      this.ffRef})
      : super._();

  @override
  NotificationRecord rebuild(
          void Function(NotificationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationRecordBuilder toBuilder() =>
      new NotificationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationRecord &&
        message == other.message &&
        type == other.type &&
        to == other.to &&
        timeCreated == other.timeCreated &&
        isDone == other.isDone &&
        letterRef == other.letterRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, message.hashCode), type.hashCode),
                        to.hashCode),
                    timeCreated.hashCode),
                isDone.hashCode),
            letterRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationRecord')
          ..add('message', message)
          ..add('type', type)
          ..add('to', to)
          ..add('timeCreated', timeCreated)
          ..add('isDone', isDone)
          ..add('letterRef', letterRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NotificationRecordBuilder
    implements Builder<NotificationRecord, NotificationRecordBuilder> {
  _$NotificationRecord? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  DateTime? _timeCreated;
  DateTime? get timeCreated => _$this._timeCreated;
  set timeCreated(DateTime? timeCreated) => _$this._timeCreated = timeCreated;

  bool? _isDone;
  bool? get isDone => _$this._isDone;
  set isDone(bool? isDone) => _$this._isDone = isDone;

  DocumentReference<Object?>? _letterRef;
  DocumentReference<Object?>? get letterRef => _$this._letterRef;
  set letterRef(DocumentReference<Object?>? letterRef) =>
      _$this._letterRef = letterRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NotificationRecordBuilder() {
    NotificationRecord._initializeBuilder(this);
  }

  NotificationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _type = $v.type;
      _to = $v.to;
      _timeCreated = $v.timeCreated;
      _isDone = $v.isDone;
      _letterRef = $v.letterRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationRecord;
  }

  @override
  void update(void Function(NotificationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationRecord build() => _build();

  _$NotificationRecord _build() {
    final _$result = _$v ??
        new _$NotificationRecord._(
            message: message,
            type: type,
            to: to,
            timeCreated: timeCreated,
            isDone: isDone,
            letterRef: letterRef,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
