// GENERATED CODE - DO NOT MODIFY BY HAND

part of SourceModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SourceModel> _$sourceModelSerializer = new _$SourceModelSerializer();

class _$SourceModelSerializer implements StructuredSerializer<SourceModel> {
  @override
  final Iterable<Type> types = const [SourceModel, _$SourceModel];
  @override
  final String wireName = 'SourceModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SourceModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SourceModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SourceModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SourceModel extends SourceModel {
  @override
  final String? id;
  @override
  final String? name;

  factory _$SourceModel([void Function(SourceModelBuilder)? updates]) =>
      (new SourceModelBuilder()..update(updates))._build();

  _$SourceModel._({this.id, this.name}) : super._();

  @override
  SourceModel rebuild(void Function(SourceModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceModelBuilder toBuilder() => new SourceModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceModel && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SourceModel')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class SourceModelBuilder implements Builder<SourceModel, SourceModelBuilder> {
  _$SourceModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  SourceModelBuilder();

  SourceModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SourceModel;
  }

  @override
  void update(void Function(SourceModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceModel build() => _build();

  _$SourceModel _build() {
    final _$result = _$v ?? new _$SourceModel._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
