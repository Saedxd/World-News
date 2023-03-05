// GENERATED CODE - DO NOT MODIFY BY HAND

part of GetNewsModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetNewsModel> _$getNewsModelSerializer =
    new _$GetNewsModelSerializer();

class _$GetNewsModelSerializer implements StructuredSerializer<GetNewsModel> {
  @override
  final Iterable<Type> types = const [GetNewsModel, _$GetNewsModel];
  @override
  final String wireName = 'GetNewsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, GetNewsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalResults;
    if (value != null) {
      result
        ..add('totalResults')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.articles;
    if (value != null) {
      result
        ..add('articles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ArticlesModel)])));
    }
    return result;
  }

  @override
  GetNewsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetNewsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'totalResults':
          result.totalResults = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'articles':
          result.articles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ArticlesModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GetNewsModel extends GetNewsModel {
  @override
  final String? status;
  @override
  final int? totalResults;
  @override
  final BuiltList<ArticlesModel>? articles;

  factory _$GetNewsModel([void Function(GetNewsModelBuilder)? updates]) =>
      (new GetNewsModelBuilder()..update(updates))._build();

  _$GetNewsModel._({this.status, this.totalResults, this.articles}) : super._();

  @override
  GetNewsModel rebuild(void Function(GetNewsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNewsModelBuilder toBuilder() => new GetNewsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNewsModel &&
        status == other.status &&
        totalResults == other.totalResults &&
        articles == other.articles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, totalResults.hashCode);
    _$hash = $jc(_$hash, articles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetNewsModel')
          ..add('status', status)
          ..add('totalResults', totalResults)
          ..add('articles', articles))
        .toString();
  }
}

class GetNewsModelBuilder
    implements Builder<GetNewsModel, GetNewsModelBuilder> {
  _$GetNewsModel? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _totalResults;
  int? get totalResults => _$this._totalResults;
  set totalResults(int? totalResults) => _$this._totalResults = totalResults;

  ListBuilder<ArticlesModel>? _articles;
  ListBuilder<ArticlesModel> get articles =>
      _$this._articles ??= new ListBuilder<ArticlesModel>();
  set articles(ListBuilder<ArticlesModel>? articles) =>
      _$this._articles = articles;

  GetNewsModelBuilder();

  GetNewsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _totalResults = $v.totalResults;
      _articles = $v.articles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetNewsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetNewsModel;
  }

  @override
  void update(void Function(GetNewsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetNewsModel build() => _build();

  _$GetNewsModel _build() {
    _$GetNewsModel _$result;
    try {
      _$result = _$v ??
          new _$GetNewsModel._(
              status: status,
              totalResults: totalResults,
              articles: _articles?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'articles';
        _articles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetNewsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
