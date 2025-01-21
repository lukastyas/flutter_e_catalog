// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sheet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SheetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetch,
    required TResult Function(String sheet) fetchBySheet,
    required TResult Function(String sheetName) search,
    required TResult Function(String fileName, String url) download,
    required TResult Function(List<String> fileNames, List<String> fileUrls)
        downloadMultiple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetch,
    TResult? Function(String sheet)? fetchBySheet,
    TResult? Function(String sheetName)? search,
    TResult? Function(String fileName, String url)? download,
    TResult? Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetch,
    TResult Function(String sheet)? fetchBySheet,
    TResult Function(String sheetName)? search,
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
    required TResult Function(_FetchBySheet value) fetchBySheet,
    required TResult Function(_Search value) search,
    required TResult Function(_Download value) download,
    required TResult Function(_DownloadMultiple value) downloadMultiple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchBySheet value)? fetchBySheet,
    TResult? Function(_Search value)? search,
    TResult? Function(_Download value)? download,
    TResult? Function(_DownloadMultiple value)? downloadMultiple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchBySheet value)? fetchBySheet,
    TResult Function(_Search value)? search,
    TResult Function(_Download value)? download,
    TResult Function(_DownloadMultiple value)? downloadMultiple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SheetEventCopyWith<$Res> {
  factory $SheetEventCopyWith(
          SheetEvent value, $Res Function(SheetEvent) then) =
      _$SheetEventCopyWithImpl<$Res, SheetEvent>;
}

/// @nodoc
class _$SheetEventCopyWithImpl<$Res, $Val extends SheetEvent>
    implements $SheetEventCopyWith<$Res> {
  _$SheetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SheetEvent
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
    extends _$SheetEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SheetEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SheetEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SheetEvent.started'));
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
    required TResult Function(String sheet) fetchBySheet,
    required TResult Function(String sheetName) search,
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
    TResult? Function(String sheet)? fetchBySheet,
    TResult? Function(String sheetName)? search,
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
    TResult Function(String sheet)? fetchBySheet,
    TResult Function(String sheetName)? search,
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
    required TResult Function(_FetchBySheet value) fetchBySheet,
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
    TResult? Function(_FetchBySheet value)? fetchBySheet,
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
    TResult Function(_FetchBySheet value)? fetchBySheet,
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

abstract class _Started implements SheetEvent {
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
    extends _$SheetEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  /// Create a copy of SheetEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchImpl with DiagnosticableTreeMixin implements _Fetch {
  const _$FetchImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SheetEvent.fetch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SheetEvent.fetch'));
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
    required TResult Function(String sheet) fetchBySheet,
    required TResult Function(String sheetName) search,
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
    TResult? Function(String sheet)? fetchBySheet,
    TResult? Function(String sheetName)? search,
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
    TResult Function(String sheet)? fetchBySheet,
    TResult Function(String sheetName)? search,
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
    required TResult Function(_FetchBySheet value) fetchBySheet,
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
    TResult? Function(_FetchBySheet value)? fetchBySheet,
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
    TResult Function(_FetchBySheet value)? fetchBySheet,
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

abstract class _Fetch implements SheetEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$FetchBySheetImplCopyWith<$Res> {
  factory _$$FetchBySheetImplCopyWith(
          _$FetchBySheetImpl value, $Res Function(_$FetchBySheetImpl) then) =
      __$$FetchBySheetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String sheet});
}

/// @nodoc
class __$$FetchBySheetImplCopyWithImpl<$Res>
    extends _$SheetEventCopyWithImpl<$Res, _$FetchBySheetImpl>
    implements _$$FetchBySheetImplCopyWith<$Res> {
  __$$FetchBySheetImplCopyWithImpl(
      _$FetchBySheetImpl _value, $Res Function(_$FetchBySheetImpl) _then)
      : super(_value, _then);

  /// Create a copy of SheetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sheet = null,
  }) {
    return _then(_$FetchBySheetImpl(
      null == sheet
          ? _value.sheet
          : sheet // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchBySheetImpl with DiagnosticableTreeMixin implements _FetchBySheet {
  const _$FetchBySheetImpl(this.sheet);

  @override
  final String sheet;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SheetEvent.fetchBySheet(sheet: $sheet)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SheetEvent.fetchBySheet'))
      ..add(DiagnosticsProperty('sheet', sheet));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBySheetImpl &&
            (identical(other.sheet, sheet) || other.sheet == sheet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sheet);

  /// Create a copy of SheetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchBySheetImplCopyWith<_$FetchBySheetImpl> get copyWith =>
      __$$FetchBySheetImplCopyWithImpl<_$FetchBySheetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetch,
    required TResult Function(String sheet) fetchBySheet,
    required TResult Function(String sheetName) search,
    required TResult Function(String fileName, String url) download,
    required TResult Function(List<String> fileNames, List<String> fileUrls)
        downloadMultiple,
  }) {
    return fetchBySheet(sheet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetch,
    TResult? Function(String sheet)? fetchBySheet,
    TResult? Function(String sheetName)? search,
    TResult? Function(String fileName, String url)? download,
    TResult? Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
  }) {
    return fetchBySheet?.call(sheet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetch,
    TResult Function(String sheet)? fetchBySheet,
    TResult Function(String sheetName)? search,
    TResult Function(String fileName, String url)? download,
    TResult Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
    required TResult orElse(),
  }) {
    if (fetchBySheet != null) {
      return fetchBySheet(sheet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchBySheet value) fetchBySheet,
    required TResult Function(_Search value) search,
    required TResult Function(_Download value) download,
    required TResult Function(_DownloadMultiple value) downloadMultiple,
  }) {
    return fetchBySheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchBySheet value)? fetchBySheet,
    TResult? Function(_Search value)? search,
    TResult? Function(_Download value)? download,
    TResult? Function(_DownloadMultiple value)? downloadMultiple,
  }) {
    return fetchBySheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchBySheet value)? fetchBySheet,
    TResult Function(_Search value)? search,
    TResult Function(_Download value)? download,
    TResult Function(_DownloadMultiple value)? downloadMultiple,
    required TResult orElse(),
  }) {
    if (fetchBySheet != null) {
      return fetchBySheet(this);
    }
    return orElse();
  }
}

abstract class _FetchBySheet implements SheetEvent {
  const factory _FetchBySheet(final String sheet) = _$FetchBySheetImpl;

  String get sheet;

  /// Create a copy of SheetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchBySheetImplCopyWith<_$FetchBySheetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String sheetName});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$SheetEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of SheetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sheetName = null,
  }) {
    return _then(_$SearchImpl(
      null == sheetName
          ? _value.sheetName
          : sheetName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl with DiagnosticableTreeMixin implements _Search {
  const _$SearchImpl(this.sheetName);

  @override
  final String sheetName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SheetEvent.search(sheetName: $sheetName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SheetEvent.search'))
      ..add(DiagnosticsProperty('sheetName', sheetName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.sheetName, sheetName) ||
                other.sheetName == sheetName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sheetName);

  /// Create a copy of SheetEvent
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
    required TResult Function(String sheet) fetchBySheet,
    required TResult Function(String sheetName) search,
    required TResult Function(String fileName, String url) download,
    required TResult Function(List<String> fileNames, List<String> fileUrls)
        downloadMultiple,
  }) {
    return search(sheetName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetch,
    TResult? Function(String sheet)? fetchBySheet,
    TResult? Function(String sheetName)? search,
    TResult? Function(String fileName, String url)? download,
    TResult? Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
  }) {
    return search?.call(sheetName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetch,
    TResult Function(String sheet)? fetchBySheet,
    TResult Function(String sheetName)? search,
    TResult Function(String fileName, String url)? download,
    TResult Function(List<String> fileNames, List<String> fileUrls)?
        downloadMultiple,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(sheetName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchBySheet value) fetchBySheet,
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
    TResult? Function(_FetchBySheet value)? fetchBySheet,
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
    TResult Function(_FetchBySheet value)? fetchBySheet,
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

abstract class _Search implements SheetEvent {
  const factory _Search(final String sheetName) = _$SearchImpl;

  String get sheetName;

  /// Create a copy of SheetEvent
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
    extends _$SheetEventCopyWithImpl<$Res, _$DownloadImpl>
    implements _$$DownloadImplCopyWith<$Res> {
  __$$DownloadImplCopyWithImpl(
      _$DownloadImpl _value, $Res Function(_$DownloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of SheetEvent
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

class _$DownloadImpl with DiagnosticableTreeMixin implements _Download {
  const _$DownloadImpl(this.fileName, this.url);

  @override
  final String fileName;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SheetEvent.download(fileName: $fileName, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SheetEvent.download'))
      ..add(DiagnosticsProperty('fileName', fileName))
      ..add(DiagnosticsProperty('url', url));
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

  /// Create a copy of SheetEvent
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
    required TResult Function(String sheet) fetchBySheet,
    required TResult Function(String sheetName) search,
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
    TResult? Function(String sheet)? fetchBySheet,
    TResult? Function(String sheetName)? search,
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
    TResult Function(String sheet)? fetchBySheet,
    TResult Function(String sheetName)? search,
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
    required TResult Function(_FetchBySheet value) fetchBySheet,
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
    TResult? Function(_FetchBySheet value)? fetchBySheet,
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
    TResult Function(_FetchBySheet value)? fetchBySheet,
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

abstract class _Download implements SheetEvent {
  const factory _Download(final String fileName, final String url) =
      _$DownloadImpl;

  String get fileName;
  String get url;

  /// Create a copy of SheetEvent
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
    extends _$SheetEventCopyWithImpl<$Res, _$DownloadMultipleImpl>
    implements _$$DownloadMultipleImplCopyWith<$Res> {
  __$$DownloadMultipleImplCopyWithImpl(_$DownloadMultipleImpl _value,
      $Res Function(_$DownloadMultipleImpl) _then)
      : super(_value, _then);

  /// Create a copy of SheetEvent
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

class _$DownloadMultipleImpl
    with DiagnosticableTreeMixin
    implements _DownloadMultiple {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SheetEvent.downloadMultiple(fileNames: $fileNames, fileUrls: $fileUrls)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SheetEvent.downloadMultiple'))
      ..add(DiagnosticsProperty('fileNames', fileNames))
      ..add(DiagnosticsProperty('fileUrls', fileUrls));
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

  /// Create a copy of SheetEvent
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
    required TResult Function(String sheet) fetchBySheet,
    required TResult Function(String sheetName) search,
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
    TResult? Function(String sheet)? fetchBySheet,
    TResult? Function(String sheetName)? search,
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
    TResult Function(String sheet)? fetchBySheet,
    TResult Function(String sheetName)? search,
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
    required TResult Function(_FetchBySheet value) fetchBySheet,
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
    TResult? Function(_FetchBySheet value)? fetchBySheet,
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
    TResult Function(_FetchBySheet value)? fetchBySheet,
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

abstract class _DownloadMultiple implements SheetEvent {
  const factory _DownloadMultiple(
          final List<String> fileNames, final List<String> fileUrls) =
      _$DownloadMultipleImpl;

  List<String> get fileNames;
  List<String> get fileUrls;

  /// Create a copy of SheetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadMultipleImplCopyWith<_$DownloadMultipleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SheetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SheetResponseModel> sheets) success,
    required TResult Function(String message) error,
    required TResult Function() multipleDownloadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SheetResponseModel> sheets)? success,
    TResult? Function(String message)? error,
    TResult? Function()? multipleDownloadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SheetResponseModel> sheets)? success,
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
abstract class $SheetStateCopyWith<$Res> {
  factory $SheetStateCopyWith(
          SheetState value, $Res Function(SheetState) then) =
      _$SheetStateCopyWithImpl<$Res, SheetState>;
}

/// @nodoc
class _$SheetStateCopyWithImpl<$Res, $Val extends SheetState>
    implements $SheetStateCopyWith<$Res> {
  _$SheetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SheetState
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
    extends _$SheetStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SheetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SheetState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SheetState.initial'));
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
    required TResult Function(List<SheetResponseModel> sheets) success,
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
    TResult? Function(List<SheetResponseModel> sheets)? success,
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
    TResult Function(List<SheetResponseModel> sheets)? success,
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

abstract class _Initial implements SheetState {
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
    extends _$SheetStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SheetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SheetState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SheetState.loading'));
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
    required TResult Function(List<SheetResponseModel> sheets) success,
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
    TResult? Function(List<SheetResponseModel> sheets)? success,
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
    TResult Function(List<SheetResponseModel> sheets)? success,
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

abstract class _Loading implements SheetState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SheetResponseModel> sheets});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SheetStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SheetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sheets = null,
  }) {
    return _then(_$SuccessImpl(
      null == sheets
          ? _value._sheets
          : sheets // ignore: cast_nullable_to_non_nullable
              as List<SheetResponseModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl with DiagnosticableTreeMixin implements _Success {
  const _$SuccessImpl(final List<SheetResponseModel> sheets) : _sheets = sheets;

  final List<SheetResponseModel> _sheets;
  @override
  List<SheetResponseModel> get sheets {
    if (_sheets is EqualUnmodifiableListView) return _sheets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sheets);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SheetState.success(sheets: $sheets)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SheetState.success'))
      ..add(DiagnosticsProperty('sheets', sheets));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._sheets, _sheets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sheets));

  /// Create a copy of SheetState
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
    required TResult Function(List<SheetResponseModel> sheets) success,
    required TResult Function(String message) error,
    required TResult Function() multipleDownloadSuccess,
  }) {
    return success(sheets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SheetResponseModel> sheets)? success,
    TResult? Function(String message)? error,
    TResult? Function()? multipleDownloadSuccess,
  }) {
    return success?.call(sheets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SheetResponseModel> sheets)? success,
    TResult Function(String message)? error,
    TResult Function()? multipleDownloadSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(sheets);
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

abstract class _Success implements SheetState {
  const factory _Success(final List<SheetResponseModel> sheets) = _$SuccessImpl;

  List<SheetResponseModel> get sheets;

  /// Create a copy of SheetState
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
    extends _$SheetStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SheetState
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

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SheetState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SheetState.error'))
      ..add(DiagnosticsProperty('message', message));
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

  /// Create a copy of SheetState
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
    required TResult Function(List<SheetResponseModel> sheets) success,
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
    TResult? Function(List<SheetResponseModel> sheets)? success,
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
    TResult Function(List<SheetResponseModel> sheets)? success,
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

abstract class _Error implements SheetState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of SheetState
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
    extends _$SheetStateCopyWithImpl<$Res, _$MultipleDownloadSuccessImpl>
    implements _$$MultipleDownloadSuccessImplCopyWith<$Res> {
  __$$MultipleDownloadSuccessImplCopyWithImpl(
      _$MultipleDownloadSuccessImpl _value,
      $Res Function(_$MultipleDownloadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SheetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MultipleDownloadSuccessImpl
    with DiagnosticableTreeMixin
    implements _MultipleDownloadSuccess {
  const _$MultipleDownloadSuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SheetState.multipleDownloadSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SheetState.multipleDownloadSuccess'));
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
    required TResult Function(List<SheetResponseModel> sheets) success,
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
    TResult? Function(List<SheetResponseModel> sheets)? success,
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
    TResult Function(List<SheetResponseModel> sheets)? success,
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

abstract class _MultipleDownloadSuccess implements SheetState {
  const factory _MultipleDownloadSuccess() = _$MultipleDownloadSuccessImpl;
}
