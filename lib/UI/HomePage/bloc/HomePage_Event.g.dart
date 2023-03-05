// GENERATED CODE - DO NOT MODIFY BY HAND

part of HomePage_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeSelectedItem extends ChangeSelectedItem {
  @override
  final String? Country;

  factory _$ChangeSelectedItem(
          [void Function(ChangeSelectedItemBuilder)? updates]) =>
      (new ChangeSelectedItemBuilder()..update(updates))._build();

  _$ChangeSelectedItem._({this.Country}) : super._();

  @override
  ChangeSelectedItem rebuild(
          void Function(ChangeSelectedItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSelectedItemBuilder toBuilder() =>
      new ChangeSelectedItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSelectedItem && Country == other.Country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeSelectedItem')
          ..add('Country', Country))
        .toString();
  }
}

class ChangeSelectedItemBuilder
    implements Builder<ChangeSelectedItem, ChangeSelectedItemBuilder> {
  _$ChangeSelectedItem? _$v;

  String? _Country;
  String? get Country => _$this._Country;
  set Country(String? Country) => _$this._Country = Country;

  ChangeSelectedItemBuilder();

  ChangeSelectedItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Country = $v.Country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSelectedItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSelectedItem;
  }

  @override
  void update(void Function(ChangeSelectedItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSelectedItem build() => _build();

  _$ChangeSelectedItem _build() {
    final _$result = _$v ?? new _$ChangeSelectedItem._(Country: Country);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
