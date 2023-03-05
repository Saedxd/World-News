// GENERATED CODE - DO NOT MODIFY BY HAND

part of NewsPage_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewsPageState extends NewsPageState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final GetNewsModel? GetNews;

  factory _$NewsPageState([void Function(NewsPageStateBuilder)? updates]) =>
      (new NewsPageStateBuilder()..update(updates))._build();

  _$NewsPageState._({this.error, this.isLoading, this.success, this.GetNews})
      : super._();

  @override
  NewsPageState rebuild(void Function(NewsPageStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsPageStateBuilder toBuilder() => new NewsPageStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsPageState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        GetNews == other.GetNews;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, GetNews.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsPageState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('GetNews', GetNews))
        .toString();
  }
}

class NewsPageStateBuilder
    implements Builder<NewsPageState, NewsPageStateBuilder> {
  _$NewsPageState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetNewsModelBuilder? _GetNews;
  GetNewsModelBuilder get GetNews =>
      _$this._GetNews ??= new GetNewsModelBuilder();
  set GetNews(GetNewsModelBuilder? GetNews) => _$this._GetNews = GetNews;

  NewsPageStateBuilder();

  NewsPageStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _GetNews = $v.GetNews?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsPageState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsPageState;
  }

  @override
  void update(void Function(NewsPageStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsPageState build() => _build();

  _$NewsPageState _build() {
    _$NewsPageState _$result;
    try {
      _$result = _$v ??
          new _$NewsPageState._(
              error: error,
              isLoading: isLoading,
              success: success,
              GetNews: _GetNews?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'GetNews';
        _GetNews?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NewsPageState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
