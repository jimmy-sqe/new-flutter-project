// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppExceptionWrapper appExceptionWrapper)
        exceptionEmitted,
    required TResult Function(bool isLoading) loadingVisibilityEmitted,
    required TResult Function() forceLogoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppExceptionWrapper appExceptionWrapper)?
        exceptionEmitted,
    TResult? Function(bool isLoading)? loadingVisibilityEmitted,
    TResult? Function()? forceLogoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppExceptionWrapper appExceptionWrapper)? exceptionEmitted,
    TResult Function(bool isLoading)? loadingVisibilityEmitted,
    TResult Function()? forceLogoutButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceptionEmitted value) exceptionEmitted,
    required TResult Function(LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(ForceLogoutButtonPressed value)
        forceLogoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceptionEmitted value)? exceptionEmitted,
    TResult? Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult? Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceptionEmitted value)? exceptionEmitted,
    TResult Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonEventCopyWith<$Res> {
  factory $CommonEventCopyWith(
          CommonEvent value, $Res Function(CommonEvent) then) =
      _$CommonEventCopyWithImpl<$Res, CommonEvent>;
}

/// @nodoc
class _$CommonEventCopyWithImpl<$Res, $Val extends CommonEvent>
    implements $CommonEventCopyWith<$Res> {
  _$CommonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ExceptionEmittedImplCopyWith<$Res> {
  factory _$$ExceptionEmittedImplCopyWith(_$ExceptionEmittedImpl value,
          $Res Function(_$ExceptionEmittedImpl) then) =
      __$$ExceptionEmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppExceptionWrapper appExceptionWrapper});
}

/// @nodoc
class __$$ExceptionEmittedImplCopyWithImpl<$Res>
    extends _$CommonEventCopyWithImpl<$Res, _$ExceptionEmittedImpl>
    implements _$$ExceptionEmittedImplCopyWith<$Res> {
  __$$ExceptionEmittedImplCopyWithImpl(_$ExceptionEmittedImpl _value,
      $Res Function(_$ExceptionEmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appExceptionWrapper = null,
  }) {
    return _then(_$ExceptionEmittedImpl(
      appExceptionWrapper: null == appExceptionWrapper
          ? _value.appExceptionWrapper
          : appExceptionWrapper // ignore: cast_nullable_to_non_nullable
              as AppExceptionWrapper,
    ));
  }
}

/// @nodoc

class _$ExceptionEmittedImpl implements ExceptionEmitted {
  const _$ExceptionEmittedImpl({required this.appExceptionWrapper});

  @override
  final AppExceptionWrapper appExceptionWrapper;

  @override
  String toString() {
    return 'CommonEvent.exceptionEmitted(appExceptionWrapper: $appExceptionWrapper)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceptionEmittedImpl &&
            (identical(other.appExceptionWrapper, appExceptionWrapper) ||
                other.appExceptionWrapper == appExceptionWrapper));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appExceptionWrapper);

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceptionEmittedImplCopyWith<_$ExceptionEmittedImpl> get copyWith =>
      __$$ExceptionEmittedImplCopyWithImpl<_$ExceptionEmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppExceptionWrapper appExceptionWrapper)
        exceptionEmitted,
    required TResult Function(bool isLoading) loadingVisibilityEmitted,
    required TResult Function() forceLogoutButtonPressed,
  }) {
    return exceptionEmitted(appExceptionWrapper);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppExceptionWrapper appExceptionWrapper)?
        exceptionEmitted,
    TResult? Function(bool isLoading)? loadingVisibilityEmitted,
    TResult? Function()? forceLogoutButtonPressed,
  }) {
    return exceptionEmitted?.call(appExceptionWrapper);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppExceptionWrapper appExceptionWrapper)? exceptionEmitted,
    TResult Function(bool isLoading)? loadingVisibilityEmitted,
    TResult Function()? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (exceptionEmitted != null) {
      return exceptionEmitted(appExceptionWrapper);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceptionEmitted value) exceptionEmitted,
    required TResult Function(LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(ForceLogoutButtonPressed value)
        forceLogoutButtonPressed,
  }) {
    return exceptionEmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceptionEmitted value)? exceptionEmitted,
    TResult? Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult? Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
  }) {
    return exceptionEmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceptionEmitted value)? exceptionEmitted,
    TResult Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (exceptionEmitted != null) {
      return exceptionEmitted(this);
    }
    return orElse();
  }
}

abstract class ExceptionEmitted implements CommonEvent {
  const factory ExceptionEmitted(
          {required final AppExceptionWrapper appExceptionWrapper}) =
      _$ExceptionEmittedImpl;

  AppExceptionWrapper get appExceptionWrapper;

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExceptionEmittedImplCopyWith<_$ExceptionEmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingVisibilityEmittedImplCopyWith<$Res> {
  factory _$$LoadingVisibilityEmittedImplCopyWith(
          _$LoadingVisibilityEmittedImpl value,
          $Res Function(_$LoadingVisibilityEmittedImpl) then) =
      __$$LoadingVisibilityEmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingVisibilityEmittedImplCopyWithImpl<$Res>
    extends _$CommonEventCopyWithImpl<$Res, _$LoadingVisibilityEmittedImpl>
    implements _$$LoadingVisibilityEmittedImplCopyWith<$Res> {
  __$$LoadingVisibilityEmittedImplCopyWithImpl(
      _$LoadingVisibilityEmittedImpl _value,
      $Res Function(_$LoadingVisibilityEmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$LoadingVisibilityEmittedImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingVisibilityEmittedImpl implements LoadingVisibilityEmitted {
  const _$LoadingVisibilityEmittedImpl({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CommonEvent.loadingVisibilityEmitted(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingVisibilityEmittedImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingVisibilityEmittedImplCopyWith<_$LoadingVisibilityEmittedImpl>
      get copyWith => __$$LoadingVisibilityEmittedImplCopyWithImpl<
          _$LoadingVisibilityEmittedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppExceptionWrapper appExceptionWrapper)
        exceptionEmitted,
    required TResult Function(bool isLoading) loadingVisibilityEmitted,
    required TResult Function() forceLogoutButtonPressed,
  }) {
    return loadingVisibilityEmitted(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppExceptionWrapper appExceptionWrapper)?
        exceptionEmitted,
    TResult? Function(bool isLoading)? loadingVisibilityEmitted,
    TResult? Function()? forceLogoutButtonPressed,
  }) {
    return loadingVisibilityEmitted?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppExceptionWrapper appExceptionWrapper)? exceptionEmitted,
    TResult Function(bool isLoading)? loadingVisibilityEmitted,
    TResult Function()? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (loadingVisibilityEmitted != null) {
      return loadingVisibilityEmitted(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceptionEmitted value) exceptionEmitted,
    required TResult Function(LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(ForceLogoutButtonPressed value)
        forceLogoutButtonPressed,
  }) {
    return loadingVisibilityEmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceptionEmitted value)? exceptionEmitted,
    TResult? Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult? Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
  }) {
    return loadingVisibilityEmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceptionEmitted value)? exceptionEmitted,
    TResult Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (loadingVisibilityEmitted != null) {
      return loadingVisibilityEmitted(this);
    }
    return orElse();
  }
}

abstract class LoadingVisibilityEmitted implements CommonEvent {
  const factory LoadingVisibilityEmitted({required final bool isLoading}) =
      _$LoadingVisibilityEmittedImpl;

  bool get isLoading;

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingVisibilityEmittedImplCopyWith<_$LoadingVisibilityEmittedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForceLogoutButtonPressedImplCopyWith<$Res> {
  factory _$$ForceLogoutButtonPressedImplCopyWith(
          _$ForceLogoutButtonPressedImpl value,
          $Res Function(_$ForceLogoutButtonPressedImpl) then) =
      __$$ForceLogoutButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForceLogoutButtonPressedImplCopyWithImpl<$Res>
    extends _$CommonEventCopyWithImpl<$Res, _$ForceLogoutButtonPressedImpl>
    implements _$$ForceLogoutButtonPressedImplCopyWith<$Res> {
  __$$ForceLogoutButtonPressedImplCopyWithImpl(
      _$ForceLogoutButtonPressedImpl _value,
      $Res Function(_$ForceLogoutButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForceLogoutButtonPressedImpl implements ForceLogoutButtonPressed {
  const _$ForceLogoutButtonPressedImpl();

  @override
  String toString() {
    return 'CommonEvent.forceLogoutButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForceLogoutButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppExceptionWrapper appExceptionWrapper)
        exceptionEmitted,
    required TResult Function(bool isLoading) loadingVisibilityEmitted,
    required TResult Function() forceLogoutButtonPressed,
  }) {
    return forceLogoutButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppExceptionWrapper appExceptionWrapper)?
        exceptionEmitted,
    TResult? Function(bool isLoading)? loadingVisibilityEmitted,
    TResult? Function()? forceLogoutButtonPressed,
  }) {
    return forceLogoutButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppExceptionWrapper appExceptionWrapper)? exceptionEmitted,
    TResult Function(bool isLoading)? loadingVisibilityEmitted,
    TResult Function()? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (forceLogoutButtonPressed != null) {
      return forceLogoutButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceptionEmitted value) exceptionEmitted,
    required TResult Function(LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(ForceLogoutButtonPressed value)
        forceLogoutButtonPressed,
  }) {
    return forceLogoutButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceptionEmitted value)? exceptionEmitted,
    TResult? Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult? Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
  }) {
    return forceLogoutButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceptionEmitted value)? exceptionEmitted,
    TResult Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (forceLogoutButtonPressed != null) {
      return forceLogoutButtonPressed(this);
    }
    return orElse();
  }
}

abstract class ForceLogoutButtonPressed implements CommonEvent {
  const factory ForceLogoutButtonPressed() = _$ForceLogoutButtonPressedImpl;
}
