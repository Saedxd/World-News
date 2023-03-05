// GENERATED CODE - DO NOT MODIFY BY HAND

part of NewsPage_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetNews extends GetNews {
  @override
  final String? Country_Code;
  @override
  final String? Category;

  factory _$GetNews([void Function(GetNewsBuilder)? updates]) =>
      (new GetNewsBuilder()..update(updates))._build();

  _$GetNews._({this.Country_Code, this.Category}) : super._();

  @override
  GetNews rebuild(void Function(GetNewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNewsBuilder toBuilder() => new GetNewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNews &&
        Country_Code == other.Country_Code &&
        Category == other.Category;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Country_Code.hashCode);
    _$hash = $jc(_$hash, Category.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetNews')
          ..add('Country_Code', Country_Code)
          ..add('Category', Category))
        .toString();
  }
}

class GetNewsBuilder implements Builder<GetNews, GetNewsBuilder> {
  _$GetNews? _$v;

  String? _Country_Code;
  String? get Country_Code => _$this._Country_Code;
  set Country_Code(String? Country_Code) => _$this._Country_Code = Country_Code;

  String? _Category;
  String? get Category => _$this._Category;
  set Category(String? Category) => _$this._Category = Category;

  GetNewsBuilder();

  GetNewsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Country_Code = $v.Country_Code;
      _Category = $v.Category;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetNews other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetNews;
  }

  @override
  void update(void Function(GetNewsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetNews build() => _build();

  _$GetNews _build() {
    final _$result =
        _$v ?? new _$GetNews._(Country_Code: Country_Code, Category: Category);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
