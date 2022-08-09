// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'letter_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LetterRecord> _$letterRecordSerializer =
    new _$LetterRecordSerializer();

class _$LetterRecordSerializer implements StructuredSerializer<LetterRecord> {
  @override
  final Iterable<Type> types = const [LetterRecord, _$LetterRecord];
  @override
  final String wireName = 'LetterRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LetterRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.subject;
    if (value != null) {
      result
        ..add('subject')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.body;
    if (value != null) {
      result
        ..add('body')
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
    value = object.from;
    if (value != null) {
      result
        ..add('from')
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
  LetterRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LetterRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'from':
          result.from = serializers.deserialize(value,
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

class _$LetterRecord extends LetterRecord {
  @override
  final String? subject;
  @override
  final String? body;
  @override
  final String? to;
  @override
  final DocumentReference<Object?>? from;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LetterRecord([void Function(LetterRecordBuilder)? updates]) =>
      (new LetterRecordBuilder()..update(updates))._build();

  _$LetterRecord._({this.subject, this.body, this.to, this.from, this.ffRef})
      : super._();

  @override
  LetterRecord rebuild(void Function(LetterRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LetterRecordBuilder toBuilder() => new LetterRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LetterRecord &&
        subject == other.subject &&
        body == other.body &&
        to == other.to &&
        from == other.from &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, subject.hashCode), body.hashCode), to.hashCode),
            from.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LetterRecord')
          ..add('subject', subject)
          ..add('body', body)
          ..add('to', to)
          ..add('from', from)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LetterRecordBuilder
    implements Builder<LetterRecord, LetterRecordBuilder> {
  _$LetterRecord? _$v;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  DocumentReference<Object?>? _from;
  DocumentReference<Object?>? get from => _$this._from;
  set from(DocumentReference<Object?>? from) => _$this._from = from;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LetterRecordBuilder() {
    LetterRecord._initializeBuilder(this);
  }

  LetterRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subject = $v.subject;
      _body = $v.body;
      _to = $v.to;
      _from = $v.from;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LetterRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LetterRecord;
  }

  @override
  void update(void Function(LetterRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LetterRecord build() => _build();

  _$LetterRecord _build() {
    final _$result = _$v ??
        new _$LetterRecord._(
            subject: subject, body: body, to: to, from: from, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
