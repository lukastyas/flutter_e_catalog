// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CatalogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetch,
    required TResult Function(String company) fetchByCompany,
    required TResult Function(String catalogName) search,
    required TResult Function(String fileName, String url) download,
    required TResult Function(List<String> fileNames, List<String> fileUrls)
        downloadMultiple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetch,
    TResult? Function(String company)? fetchByCompany,
    TResult? Function(String catalogName)? search,
    TResult? Function(String fileName, String url)? download,
    TResult? Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetch,
    TResult Function(String company)? fetchByCompany,
    TResult Function(String catalogName)? search,
    TResult Function(String fileName, String url)? download,
    TResult Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchByCompany value) fetchByCompany,
    required TResult Function(_Search value) search,
    required TResult Function(_Download value) download,
    required TResult Function(_DownloadMultiple value) downloadMultiple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchByCompany value)? fetchByCompany,
    TResult? Function(_Search value)? search,
    TResult? Function(_Download value)? download,
    TResult? Function(_DownloadMultiple value)? downloadMultiple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchByCompany value)? fetchByCompany,
    TResult Function(_Search value)? search,
    TResult Function(_Download value)? download,
    TResult Function(_DownloadMultiple value)? downloadMultiple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogEventCopyWith<$Res> {
  factory $CatalogEventCopyWith(
          CatalogEvent value, $Res Function(CatalogEvent) then) =
      _$CatalogEventCopyWithImpl<$Res, CatalogEvent>;
}

/// @nodoc
class _$CatalogEventCopyWithImpl<$Res, $Val extends CatalogEvent>
    implements $CatalogEventCopyWith<$Res> {
  _$CatalogEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CatalogEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetch,
    required TResult Function(String company) fetchByCompany,
    required TResult Function(String catalogName) search,
    required TResult Function(String fileName, String url) download,
    required TResult Function(List<String> fileNames, List<String> fileUrls)
        downloadMultiple,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetch,
    TResult? Function(String company)? fetchByCompany,
    TResult? Function(String catalogName)? search,
    TResult? Function(String fileName, String url)? download,
    TResult? Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetch,
    TResult Function(String company)? fetchByCompany,
    TResult Function(String catalogName)? search,
    TResult Function(String fileName, String url)? download,
    TResult Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchByCompany value) fetchByCompany,
    required TResult Function(_Search value) search,
    required TResult Function(_Download value) download,
    required TResult Function(_DownloadMultiple value) downloadMultiple,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchByCompany value)? fetchByCompany,
    TResult? Function(_Search value)? search,
    TResult? Function(_Download value)? download,
    TResult? Function(_DownloadMultiple value)? downloadMultiple,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchByCompany value)? fetchByCompany,
    TResult Function(_Search value)? search,
    TResult Function(_Download value)? download,
    TResult Function(_DownloadMultiple value)? downloadMultiple,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CatalogEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'CatalogEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetch,
    required TResult Function(String company) fetchByCompany,
    required TResult Function(String catalogName) search,
    required TResult Function(String fileName, String url) download,
    required TResult Function(List<String> fileNames, List<String> fileUrls)
        downloadMultiple,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetch,
    TResult? Function(String company)? fetchByCompany,
    TResult? Function(String catalogName)? search,
    TResult? Function(String fileName, String url)? download,
    TResult? Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetch,
    TResult Function(String company)? fetchByCompany,
    TResult Function(String catalogName)? search,
    TResult Function(String fileName, String url)? download,
    TResult Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchByCompany value) fetchByCompany,
    required TResult Function(_Search value) search,
    required TResult Function(_Download value) download,
    required TResult Function(_DownloadMultiple value) downloadMultiple,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchByCompany value)? fetchByCompany,
    TResult? Function(_Search value)? search,
    TResult? Function(_Download value)? download,
    TResult? Function(_DownloadMultiple value)? downloadMultiple,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchByCompany value)? fetchByCompany,
    TResult Function(_Search value)? search,
    TResult Function(_Download value)? download,
    TResult Function(_DownloadMultiple value)? downloadMultiple,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements CatalogEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$FetchByCompanyImplCopyWith<$Res> {
  factory _$$FetchByCompanyImplCopyWith(_$FetchByCompanyImpl value,
          $Res Function(_$FetchByCompanyImpl) then) =
      __$$FetchByCompanyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String company});
}

/// @nodoc
class __$$FetchByCompanyImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$FetchByCompanyImpl>
    implements _$$FetchByCompanyImplCopyWith<$Res> {
  __$$FetchByCompanyImplCopyWithImpl(
      _$FetchByCompanyImpl _value, $Res Function(_$FetchByCompanyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
  }) {
    return _then(_$FetchByCompanyImpl(
      null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchByCompanyImpl implements _FetchByCompany {
  const _$FetchByCompanyImpl(this.company);

  @override
  final String company;

  @override
  String toString() {
    return 'CatalogEvent.fetchByCompany(company: $company)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchByCompanyImpl &&
            (identical(other.company, company) || other.company == company));
  }

  @override
  int get hashCode => Object.hash(runtimeType, company);

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchByCompanyImplCopyWith<_$FetchByCompanyImpl> get copyWith =>
      __$$FetchByCompanyImplCopyWithImpl<_$FetchByCompanyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetch,
    required TResult Function(String company) fetchByCompany,
    required TResult Function(String catalogName) search,
    required TResult Function(String fileName, String url) download,
    required TResult Function(List<String> fileNames, List<String> fileUrls)
        downloadMultiple,
  }) {
    return fetchByCompany(company);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetch,
    TResult? Function(String company)? fetchByCompany,
    TResult? Function(String catalogName)? search,
    TResult? Function(String fileName, String url)? download,
    TResult? Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
  }) {
    return fetchByCompany?.call(company);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetch,
    TResult Function(String company)? fetchByCompany,
    TResult Function(String catalogName)? search,
    TResult Function(String fileName, String url)? download,
    TResult Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
    required TResult orElse(),
  }) {
    if (fetchByCompany != null) {
      return fetchByCompany(company);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchByCompany value) fetchByCompany,
    required TResult Function(_Search value) search,
    required TResult Function(_Download value) download,
    required TResult Function(_DownloadMultiple value) downloadMultiple,
  }) {
    return fetchByCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchByCompany value)? fetchByCompany,
    TResult? Function(_Search value)? search,
    TResult? Function(_Download value)? download,
    TResult? Function(_DownloadMultiple value)? downloadMultiple,
  }) {
    return fetchByCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchByCompany value)? fetchByCompany,
    TResult Function(_Search value)? search,
    TResult Function(_Download value)? download,
    TResult Function(_DownloadMultiple value)? downloadMultiple,
    required TResult orElse(),
  }) {
    if (fetchByCompany != null) {
      return fetchByCompany(this);
    }
    return orElse();
  }
}

abstract class _FetchByCompany implements CatalogEvent {
  const factory _FetchByCompany(final String company) = _$FetchByCompanyImpl;

  String get company;

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchByCompanyImplCopyWith<_$FetchByCompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String catalogName});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogName = null,
  }) {
    return _then(_$SearchImpl(
      null == catalogName
          ? _value.catalogName
          : catalogName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl(this.catalogName);

  @override
  final String catalogName;

  @override
  String toString() {
    return 'CatalogEvent.search(catalogName: $catalogName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.catalogName, catalogName) ||
                other.catalogName == catalogName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catalogName);

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetch,
    required TResult Function(String company) fetchByCompany,
    required TResult Function(String catalogName) search,
    required TResult Function(String fileName, String url) download,
    required TResult Function(List<String> fileNames, List<String> fileUrls)
        downloadMultiple,
  }) {
    return search(catalogName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetch,
    TResult? Function(String company)? fetchByCompany,
    TResult? Function(String catalogName)? search,
    TResult? Function(String fileName, String url)? download,
    TResult? Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
  }) {
    return search?.call(catalogName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetch,
    TResult Function(String company)? fetchByCompany,
    TResult Function(String catalogName)? search,
    TResult Function(String fileName, String url)? download,
    TResult Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(catalogName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchByCompany value) fetchByCompany,
    required TResult Function(_Search value) search,
    required TResult Function(_Download value) download,
    required TResult Function(_DownloadMultiple value) downloadMultiple,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchByCompany value)? fetchByCompany,
    TResult? Function(_Search value)? search,
    TResult? Function(_Download value)? download,
    TResult? Function(_DownloadMultiple value)? downloadMultiple,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchByCompany value)? fetchByCompany,
    TResult Function(_Search value)? search,
    TResult Function(_Download value)? download,
    TResult Function(_DownloadMultiple value)? downloadMultiple,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements CatalogEvent {
  const factory _Search(final String catalogName) = _$SearchImpl;

  String get catalogName;

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadImplCopyWith<$Res> {
  factory _$$DownloadImplCopyWith(
          _$DownloadImpl value, $Res Function(_$DownloadImpl) then) =
      __$$DownloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fileName, String url});
}

/// @nodoc
class __$$DownloadImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$DownloadImpl>
    implements _$$DownloadImplCopyWith<$Res> {
  __$$DownloadImplCopyWithImpl(
      _$DownloadImpl _value, $Res Function(_$DownloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? url = null,
  }) {
    return _then(_$DownloadImpl(
      null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DownloadImpl implements _Download {
  const _$DownloadImpl(this.fileName, this.url);

  @override
  final String fileName;
  @override
  final String url;

  @override
  String toString() {
    return 'CatalogEvent.download(fileName: $fileName, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName, url);

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadImplCopyWith<_$DownloadImpl> get copyWith =>
      __$$DownloadImplCopyWithImpl<_$DownloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetch,
    required TResult Function(String company) fetchByCompany,
    required TResult Function(String catalogName) search,
    required TResult Function(String fileName, String url) download,
    required TResult Function(List<String> fileNames, List<String> fileUrls)
        downloadMultiple,
  }) {
    return download(fileName, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetch,
    TResult? Function(String company)? fetchByCompany,
    TResult? Function(String catalogName)? search,
    TResult? Function(String fileName, String url)? download,
    TResult? Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
  }) {
    return download?.call(fileName, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetch,
    TResult Function(String company)? fetchByCompany,
    TResult Function(String catalogName)? search,
    TResult Function(String fileName, String url)? download,
    TResult Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(fileName, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchByCompany value) fetchByCompany,
    required TResult Function(_Search value) search,
    required TResult Function(_Download value) download,
    required TResult Function(_DownloadMultiple value) downloadMultiple,
  }) {
    return download(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchByCompany value)? fetchByCompany,
    TResult? Function(_Search value)? search,
    TResult? Function(_Download value)? download,
    TResult? Function(_DownloadMultiple value)? downloadMultiple,
  }) {
    return download?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchByCompany value)? fetchByCompany,
    TResult Function(_Search value)? search,
    TResult Function(_Download value)? download,
    TResult Function(_DownloadMultiple value)? downloadMultiple,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(this);
    }
    return orElse();
  }
}

abstract class _Download implements CatalogEvent {
  const factory _Download(final String fileName, final String url) =
      _$DownloadImpl;

  String get fileName;
  String get url;

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadImplCopyWith<_$DownloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadMultipleImplCopyWith<$Res> {
  factory _$$DownloadMultipleImplCopyWith(_$DownloadMultipleImpl value,
          $Res Function(_$DownloadMultipleImpl) then) =
      __$$DownloadMultipleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> fileNames, List<String> fileUrls});
}

/// @nodoc
class __$$DownloadMultipleImplCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$DownloadMultipleImpl>
    implements _$$DownloadMultipleImplCopyWith<$Res> {
  __$$DownloadMultipleImplCopyWithImpl(_$DownloadMultipleImpl _value,
      $Res Function(_$DownloadMultipleImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileNames = null,
    Object? fileUrls = null,
  }) {
    return _then(_$DownloadMultipleImpl(
      null == fileNames
          ? _value._fileNames
          : fileNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == fileUrls
          ? _value._fileUrls
          : fileUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DownloadMultipleImpl implements _DownloadMultiple {
  const _$DownloadMultipleImpl(
      final List<String> fileNames, final List<String> fileUrls)
      : _fileNames = fileNames,
        _fileUrls = fileUrls;

  final List<String> _fileNames;
  @override
  List<String> get fileNames {
    if (_fileNames is EqualUnmodifiableListView) return _fileNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileNames);
  }

  final List<String> _fileUrls;
  @override
  List<String> get fileUrls {
    if (_fileUrls is EqualUnmodifiableListView) return _fileUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileUrls);
  }

  @override
  String toString() {
    return 'CatalogEvent.downloadMultiple(fileNames: $fileNames, fileUrls: $fileUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadMultipleImpl &&
            const DeepCollectionEquality()
                .equals(other._fileNames, _fileNames) &&
            const DeepCollectionEquality().equals(other._fileUrls, _fileUrls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_fileNames),
      const DeepCollectionEquality().hash(_fileUrls));

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadMultipleImplCopyWith<_$DownloadMultipleImpl> get copyWith =>
      __$$DownloadMultipleImplCopyWithImpl<_$DownloadMultipleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetch,
    required TResult Function(String company) fetchByCompany,
    required TResult Function(String catalogName) search,
    required TResult Function(String fileName, String url) download,
    required TResult Function(List<String> fileNames, List<String> fileUrls)
        downloadMultiple,
  }) {
    return downloadMultiple(fileNames, fileUrls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetch,
    TResult? Function(String company)? fetchByCompany,
    TResult? Function(String catalogName)? search,
    TResult? Function(String fileName, String url)? download,
    TResult? Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
  }) {
    return downloadMultiple?.call(fileNames, fileUrls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetch,
    TResult Function(String company)? fetchByCompany,
    TResult Function(String catalogName)? search,
    TResult Function(String fileName, String url)? download,
    TResult Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
    required TResult orElse(),
  }) {
    if (downloadMultiple != null) {
      return downloadMultiple(fileNames, fileUrls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchByCompany value) fetchByCompany,
    required TResult Function(_Search value) search,
    required TResult Function(_Download value) download,
    required TResult Function(_DownloadMultiple value) downloadMultiple,
  }) {
    return downloadMultiple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchByCompany value)? fetchByCompany,
    TResult? Function(_Search value)? search,
    TResult? Function(_Download value)? download,
    TResult? Function(_DownloadMultiple value)? downloadMultiple,
  }) {
    return downloadMultiple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchByCompany value)? fetchByCompany,
    TResult Function(_Search value)? search,
    TResult Function(_Download value)? download,
    TResult Function(_DownloadMultiple value)? downloadMultiple,
    required TResult orElse(),
  }) {
    if (downloadMultiple != null) {
      return downloadMultiple(this);
    }
    return orElse();
  }
}

abstract class _DownloadMultiple implements CatalogEvent {
  const factory _DownloadMultiple(
          final List<String> fileNames, final List<String> fileUrls) =
      _$DownloadMultipleImpl;

  List<String> get fileNames;
  List<String> get fileUrls;

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadMultipleImplCopyWith<_$DownloadMultipleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CatalogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CatalogResponseModel> catalogs) success,
    required TResult Function(String message) error,
    required TResult Function() multipleDownloadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CatalogResponseModel> catalogs)? success,
    TResult? Function(String message)? error,
    TResult? Function()? multipleDownloadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CatalogResponseModel> catalogs)? success,
    TResult Function(String message)? error,
    TResult Function()? multipleDownloadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_MultipleDownloadSuccess value)
        multipleDownloadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_MultipleDownloadSuccess value)? multipleDownloadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_MultipleDownloadSuccess value)? multipleDownloadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogStateCopyWith<$Res> {
  factory $CatalogStateCopyWith(
          CatalogState value, $Res Function(CatalogState) then) =
      _$CatalogStateCopyWithImpl<$Res, CatalogState>;
}

/// @nodoc
class _$CatalogStateCopyWithImpl<$Res, $Val extends CatalogState>
    implements $CatalogStateCopyWith<$Res> {
  _$CatalogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CatalogState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CatalogResponseModel> catalogs) success,
    required TResult Function(String message) error,
    required TResult Function() multipleDownloadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CatalogResponseModel> catalogs)? success,
    TResult? Function(String message)? error,
    TResult? Function()? multipleDownloadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CatalogResponseModel> catalogs)? success,
    TResult Function(String message)? error,
    TResult Function()? multipleDownloadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_MultipleDownloadSuccess value)
        multipleDownloadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_MultipleDownloadSuccess value)? multipleDownloadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_MultipleDownloadSuccess value)? multipleDownloadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CatalogState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CatalogState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CatalogResponseModel> catalogs) success,
    required TResult Function(String message) error,
    required TResult Function() multipleDownloadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CatalogResponseModel> catalogs)? success,
    TResult? Function(String message)? error,
    TResult? Function()? multipleDownloadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CatalogResponseModel> catalogs)? success,
    TResult Function(String message)? error,
    TResult Function()? multipleDownloadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_MultipleDownloadSuccess value)
        multipleDownloadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_MultipleDownloadSuccess value)? multipleDownloadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_MultipleDownloadSuccess value)? multipleDownloadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CatalogState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CatalogResponseModel> catalogs});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogs = null,
  }) {
    return _then(_$SuccessImpl(
      null == catalogs
          ? _value._catalogs
          : catalogs // ignore: cast_nullable_to_non_nullable
              as List<CatalogResponseModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<CatalogResponseModel> catalogs)
      : _catalogs = catalogs;

  final List<CatalogResponseModel> _catalogs;
  @override
  List<CatalogResponseModel> get catalogs {
    if (_catalogs is EqualUnmodifiableListView) return _catalogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catalogs);
  }

  @override
  String toString() {
    return 'CatalogState.success(catalogs: $catalogs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._catalogs, _catalogs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_catalogs));

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CatalogResponseModel> catalogs) success,
    required TResult Function(String message) error,
    required TResult Function() multipleDownloadSuccess,
  }) {
    return success(catalogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CatalogResponseModel> catalogs)? success,
    TResult? Function(String message)? error,
    TResult? Function()? multipleDownloadSuccess,
  }) {
    return success?.call(catalogs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CatalogResponseModel> catalogs)? success,
    TResult Function(String message)? error,
    TResult Function()? multipleDownloadSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(catalogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_MultipleDownloadSuccess value)
        multipleDownloadSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_MultipleDownloadSuccess value)? multipleDownloadSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_MultipleDownloadSuccess value)? multipleDownloadSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CatalogState {
  const factory _Success(final List<CatalogResponseModel> catalogs) =
      _$SuccessImpl;

  List<CatalogResponseModel> get catalogs;

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CatalogState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CatalogResponseModel> catalogs) success,
    required TResult Function(String message) error,
    required TResult Function() multipleDownloadSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CatalogResponseModel> catalogs)? success,
    TResult? Function(String message)? error,
    TResult? Function()? multipleDownloadSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CatalogResponseModel> catalogs)? success,
    TResult Function(String message)? error,
    TResult Function()? multipleDownloadSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_MultipleDownloadSuccess value)
        multipleDownloadSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_MultipleDownloadSuccess value)? multipleDownloadSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_MultipleDownloadSuccess value)? multipleDownloadSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CatalogState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultipleDownloadSuccessImplCopyWith<$Res> {
  factory _$$MultipleDownloadSuccessImplCopyWith(
          _$MultipleDownloadSuccessImpl value,
          $Res Function(_$MultipleDownloadSuccessImpl) then) =
      __$$MultipleDownloadSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MultipleDownloadSuccessImplCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$MultipleDownloadSuccessImpl>
    implements _$$MultipleDownloadSuccessImplCopyWith<$Res> {
  __$$MultipleDownloadSuccessImplCopyWithImpl(
      _$MultipleDownloadSuccessImpl _value,
      $Res Function(_$MultipleDownloadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MultipleDownloadSuccessImpl implements _MultipleDownloadSuccess {
  const _$MultipleDownloadSuccessImpl();

  @override
  String toString() {
    return 'CatalogState.multipleDownloadSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultipleDownloadSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CatalogResponseModel> catalogs) success,
    required TResult Function(String message) error,
    required TResult Function() multipleDownloadSuccess,
  }) {
    return multipleDownloadSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CatalogResponseModel> catalogs)? success,
    TResult? Function(String message)? error,
    TResult? Function()? multipleDownloadSuccess,
  }) {
    return multipleDownloadSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CatalogResponseModel> catalogs)? success,
    TResult Function(String message)? error,
    TResult Function()? multipleDownloadSuccess,
    required TResult orElse(),
  }) {
    if (multipleDownloadSuccess != null) {
      return multipleDownloadSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_MultipleDownloadSuccess value)
        multipleDownloadSuccess,
  }) {
    return multipleDownloadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_MultipleDownloadSuccess value)? multipleDownloadSuccess,
  }) {
    return multipleDownloadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_MultipleDownloadSuccess value)? multipleDownloadSuccess,
    required TResult orElse(),
  }) {
    if (multipleDownloadSuccess != null) {
      return multipleDownloadSuccess(this);
    }
    return orElse();
  }
}

abstract class _MultipleDownloadSuccess implements CatalogState {
  const factory _MultipleDownloadSuccess() = _$MultipleDownloadSuccessImpl;
}
