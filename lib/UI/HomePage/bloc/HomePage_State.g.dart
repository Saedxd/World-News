// GENERATED CODE - DO NOT MODIFY BY HAND

part of ContributeScreen_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomePageState extends HomePageState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final String? SelectedItem;
  @override
  final bool? isBackPressedOrTouchedOutSide;
  @override
  final bool? Selected;

  factory _$HomePageState([void Function(HomePageStateBuilder)? updates]) =>
      (new HomePageStateBuilder()..update(updates))._build();

  _$HomePageState._(
      {this.error,
      this.isLoading,
      this.success,
      this.SelectedItem,
      this.isBackPressedOrTouchedOutSide,
      this.Selected})
      : super._();

  @override
  HomePageState rebuild(void Function(HomePageStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomePageStateBuilder toBuilder() => new HomePageStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomePageState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        SelectedItem == other.SelectedItem &&
        isBackPressedOrTouchedOutSide == other.isBackPressedOrTouchedOutSide &&
        Selected == other.Selected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, SelectedItem.hashCode);
    _$hash = $jc(_$hash, isBackPressedOrTouchedOutSide.hashCode);
    _$hash = $jc(_$hash, Selected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomePageState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('SelectedItem', SelectedItem)
          ..add('isBackPressedOrTouchedOutSide', isBackPressedOrTouchedOutSide)
          ..add('Selected', Selected))
        .toString();
  }
}

class HomePageStateBuilder
    implements Builder<HomePageState, HomePageStateBuilder> {
  _$HomePageState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _SelectedItem;
  String? get SelectedItem => _$this._SelectedItem;
  set SelectedItem(String? SelectedItem) => _$this._SelectedItem = SelectedItem;

  bool? _isBackPressedOrTouchedOutSide;
  bool? get isBackPressedOrTouchedOutSide =>
      _$this._isBackPressedOrTouchedOutSide;
  set isBackPressedOrTouchedOutSide(bool? isBackPressedOrTouchedOutSide) =>
      _$this._isBackPressedOrTouchedOutSide = isBackPressedOrTouchedOutSide;

  bool? _Selected;
  bool? get Selected => _$this._Selected;
  set Selected(bool? Selected) => _$this._Selected = Selected;

  HomePageStateBuilder();

  HomePageStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _SelectedItem = $v.SelectedItem;
      _isBackPressedOrTouchedOutSide = $v.isBackPressedOrTouchedOutSide;
      _Selected = $v.Selected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomePageState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomePageState;
  }

  @override
  void update(void Function(HomePageStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomePageState build() => _build();

  _$HomePageState _build() {
    final _$result = _$v ??
        new _$HomePageState._(
            error: error,
            isLoading: isLoading,
            success: success,
            SelectedItem: SelectedItem,
            isBackPressedOrTouchedOutSide: isBackPressedOrTouchedOutSide,
            Selected: Selected);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
