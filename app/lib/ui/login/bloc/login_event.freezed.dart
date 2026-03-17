// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailTextFieldChanged,
    required TResult Function(String password) passwordTextFieldChanged,
    required TResult Function() loginButtonPressed,
    required TResult Function() googleLoginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailTextFieldChanged,
    TResult? Function(String password)? passwordTextFieldChanged,
    TResult? Function()? loginButtonPressed,
    TResult? Function()? googleLoginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailTextFieldChanged,
    TResult Function(String password)? passwordTextFieldChanged,
    TResult Function()? loginButtonPressed,
    TResult Function()? googleLoginButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailTextFieldChanged value) emailTextFieldChanged,
    required TResult Function(PasswordTextFieldChanged value)
        passwordTextFieldChanged,
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
    required TResult Function(GoogleLoginButtonPressed value)
        googleLoginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailTextFieldChanged value)? emailTextFieldChanged,
    TResult? Function(PasswordTextFieldChanged value)? passwordTextFieldChanged,
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
    TResult? Function(GoogleLoginButtonPressed value)? googleLoginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailTextFieldChanged value)? emailTextFieldChanged,
    TResult Function(PasswordTextFieldChanged value)? passwordTextFieldChanged,
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    TResult Function(GoogleLoginButtonPressed value)? googleLoginButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmailTextFieldChangedImplCopyWith<$Res> {
  factory _$$EmailTextFieldChangedImplCopyWith(
          _$EmailTextFieldChangedImpl value,
          $Res Function(_$EmailTextFieldChangedImpl) then) =
      __$$EmailTextFieldChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailTextFieldChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$EmailTextFieldChangedImpl>
    implements _$$EmailTextFieldChangedImplCopyWith<$Res> {
  __$$EmailTextFieldChangedImplCopyWithImpl(_$EmailTextFieldChangedImpl _value,
      $Res Function(_$EmailTextFieldChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailTextFieldChangedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailTextFieldChangedImpl implements EmailTextFieldChanged {
  const _$EmailTextFieldChangedImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'LoginEvent.emailTextFieldChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailTextFieldChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailTextFieldChangedImplCopyWith<_$EmailTextFieldChangedImpl>
      get copyWith => __$$EmailTextFieldChangedImplCopyWithImpl<
          _$EmailTextFieldChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailTextFieldChanged,
    required TResult Function(String password) passwordTextFieldChanged,
    required TResult Function() loginButtonPressed,
    required TResult Function() googleLoginButtonPressed,
  }) {
    return emailTextFieldChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailTextFieldChanged,
    TResult? Function(String password)? passwordTextFieldChanged,
    TResult? Function()? loginButtonPressed,
    TResult? Function()? googleLoginButtonPressed,
  }) {
    return emailTextFieldChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailTextFieldChanged,
    TResult Function(String password)? passwordTextFieldChanged,
    TResult Function()? loginButtonPressed,
    TResult Function()? googleLoginButtonPressed,
    required TResult orElse(),
  }) {
    if (emailTextFieldChanged != null) {
      return emailTextFieldChanged(email);
    }

    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailTextFieldChanged value) emailTextFieldChanged,
    required TResult Function(PasswordTextFieldChanged value)
        passwordTextFieldChanged,
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
    required TResult Function(GoogleLoginButtonPressed value)
        googleLoginButtonPressed,
  }) {
    return emailTextFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailTextFieldChanged value)? emailTextFieldChanged,
    TResult? Function(PasswordTextFieldChanged value)? passwordTextFieldChanged,
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
    TResult? Function(GoogleLoginButtonPressed value)? googleLoginButtonPressed,
  }) {
    return emailTextFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailTextFieldChanged value)? emailTextFieldChanged,
    TResult Function(PasswordTextFieldChanged value)? passwordTextFieldChanged,
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    TResult Function(GoogleLoginButtonPressed value)? googleLoginButtonPressed,
    required TResult orElse(),
  }) {
    if (emailTextFieldChanged != null) {
      return emailTextFieldChanged(this);
    }

    return orElse();
  }
}

abstract class EmailTextFieldChanged implements LoginEvent {
  const factory EmailTextFieldChanged({required final String email}) =
      _$EmailTextFieldChangedImpl;

  String get email;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailTextFieldChangedImplCopyWith<_$EmailTextFieldChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordTextFieldChangedImplCopyWith<$Res> {
  factory _$$PasswordTextFieldChangedImplCopyWith(
          _$PasswordTextFieldChangedImpl value,
          $Res Function(_$PasswordTextFieldChangedImpl) then) =
      __$$PasswordTextFieldChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordTextFieldChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$PasswordTextFieldChangedImpl>
    implements _$$PasswordTextFieldChangedImplCopyWith<$Res> {
  __$$PasswordTextFieldChangedImplCopyWithImpl(
      _$PasswordTextFieldChangedImpl _value,
      $Res Function(_$PasswordTextFieldChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordTextFieldChangedImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordTextFieldChangedImpl implements PasswordTextFieldChanged {
  const _$PasswordTextFieldChangedImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.passwordTextFieldChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordTextFieldChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordTextFieldChangedImplCopyWith<_$PasswordTextFieldChangedImpl>
      get copyWith => __$$PasswordTextFieldChangedImplCopyWithImpl<
          _$PasswordTextFieldChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailTextFieldChanged,
    required TResult Function(String password) passwordTextFieldChanged,
    required TResult Function() loginButtonPressed,
    required TResult Function() googleLoginButtonPressed,
  }) {
    return passwordTextFieldChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailTextFieldChanged,
    TResult? Function(String password)? passwordTextFieldChanged,
    TResult? Function()? loginButtonPressed,
    TResult? Function()? googleLoginButtonPressed,
  }) {
    return passwordTextFieldChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailTextFieldChanged,
    TResult Function(String password)? passwordTextFieldChanged,
    TResult Function()? loginButtonPressed,
    TResult Function()? googleLoginButtonPressed,
    required TResult orElse(),
  }) {
    if (passwordTextFieldChanged != null) {
      return passwordTextFieldChanged(password);
    }

    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailTextFieldChanged value) emailTextFieldChanged,
    required TResult Function(PasswordTextFieldChanged value)
        passwordTextFieldChanged,
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
    required TResult Function(GoogleLoginButtonPressed value)
        googleLoginButtonPressed,
  }) {
    return passwordTextFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailTextFieldChanged value)? emailTextFieldChanged,
    TResult? Function(PasswordTextFieldChanged value)? passwordTextFieldChanged,
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
    TResult? Function(GoogleLoginButtonPressed value)? googleLoginButtonPressed,
  }) {
    return passwordTextFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailTextFieldChanged value)? emailTextFieldChanged,
    TResult Function(PasswordTextFieldChanged value)? passwordTextFieldChanged,
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    TResult Function(GoogleLoginButtonPressed value)? googleLoginButtonPressed,
    required TResult orElse(),
  }) {
    if (passwordTextFieldChanged != null) {
      return passwordTextFieldChanged(this);
    }

    return orElse();
  }
}

abstract class PasswordTextFieldChanged implements LoginEvent {
  const factory PasswordTextFieldChanged({required final String password}) =
      _$PasswordTextFieldChangedImpl;

  String get password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordTextFieldChangedImplCopyWith<_$PasswordTextFieldChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginButtonPressedImplCopyWith<$Res> {
  factory _$$LoginButtonPressedImplCopyWith(_$LoginButtonPressedImpl value,
          $Res Function(_$LoginButtonPressedImpl) then) =
      __$$LoginButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginButtonPressedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginButtonPressedImpl>
    implements _$$LoginButtonPressedImplCopyWith<$Res> {
  __$$LoginButtonPressedImplCopyWithImpl(_$LoginButtonPressedImpl _value,
      $Res Function(_$LoginButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginButtonPressedImpl implements LoginButtonPressed {
  const _$LoginButtonPressedImpl();

  @override
  String toString() {
    return 'LoginEvent.loginButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailTextFieldChanged,
    required TResult Function(String password) passwordTextFieldChanged,
    required TResult Function() loginButtonPressed,
    required TResult Function() googleLoginButtonPressed,
  }) {
    return loginButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailTextFieldChanged,
    TResult? Function(String password)? passwordTextFieldChanged,
    TResult? Function()? loginButtonPressed,
    TResult? Function()? googleLoginButtonPressed,
  }) {
    return loginButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailTextFieldChanged,
    TResult Function(String password)? passwordTextFieldChanged,
    TResult Function()? loginButtonPressed,
    TResult Function()? googleLoginButtonPressed,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed();
    }

    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailTextFieldChanged value) emailTextFieldChanged,
    required TResult Function(PasswordTextFieldChanged value)
        passwordTextFieldChanged,
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
    required TResult Function(GoogleLoginButtonPressed value)
        googleLoginButtonPressed,
  }) {
    return loginButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailTextFieldChanged value)? emailTextFieldChanged,
    TResult? Function(PasswordTextFieldChanged value)? passwordTextFieldChanged,
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
    TResult? Function(GoogleLoginButtonPressed value)? googleLoginButtonPressed,
  }) {
    return loginButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailTextFieldChanged value)? emailTextFieldChanged,
    TResult Function(PasswordTextFieldChanged value)? passwordTextFieldChanged,
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    TResult Function(GoogleLoginButtonPressed value)? googleLoginButtonPressed,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(this);
    }

    return orElse();
  }
}

abstract class LoginButtonPressed implements LoginEvent {
  const factory LoginButtonPressed() = _$LoginButtonPressedImpl;
}

/// @nodoc
abstract class _$$GoogleLoginButtonPressedImplCopyWith<$Res> {
  factory _$$GoogleLoginButtonPressedImplCopyWith(
          _$GoogleLoginButtonPressedImpl value,
          $Res Function(_$GoogleLoginButtonPressedImpl) then) =
      __$$GoogleLoginButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleLoginButtonPressedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$GoogleLoginButtonPressedImpl>
    implements _$$GoogleLoginButtonPressedImplCopyWith<$Res> {
  __$$GoogleLoginButtonPressedImplCopyWithImpl(
      _$GoogleLoginButtonPressedImpl _value,
      $Res Function(_$GoogleLoginButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GoogleLoginButtonPressedImpl implements GoogleLoginButtonPressed {
  const _$GoogleLoginButtonPressedImpl();

  @override
  String toString() {
    return 'LoginEvent.googleLoginButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleLoginButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailTextFieldChanged,
    required TResult Function(String password) passwordTextFieldChanged,
    required TResult Function() loginButtonPressed,
    required TResult Function() googleLoginButtonPressed,
  }) {
    return googleLoginButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailTextFieldChanged,
    TResult? Function(String password)? passwordTextFieldChanged,
    TResult? Function()? loginButtonPressed,
    TResult? Function()? googleLoginButtonPressed,
  }) {
    return googleLoginButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailTextFieldChanged,
    TResult Function(String password)? passwordTextFieldChanged,
    TResult Function()? loginButtonPressed,
    TResult Function()? googleLoginButtonPressed,
    required TResult orElse(),
  }) {
    if (googleLoginButtonPressed != null) {
      return googleLoginButtonPressed();
    }

    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailTextFieldChanged value) emailTextFieldChanged,
    required TResult Function(PasswordTextFieldChanged value)
        passwordTextFieldChanged,
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
    required TResult Function(GoogleLoginButtonPressed value)
        googleLoginButtonPressed,
  }) {
    return googleLoginButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailTextFieldChanged value)? emailTextFieldChanged,
    TResult? Function(PasswordTextFieldChanged value)? passwordTextFieldChanged,
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
    TResult? Function(GoogleLoginButtonPressed value)? googleLoginButtonPressed,
  }) {
    return googleLoginButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailTextFieldChanged value)? emailTextFieldChanged,
    TResult Function(PasswordTextFieldChanged value)? passwordTextFieldChanged,
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    TResult Function(GoogleLoginButtonPressed value)? googleLoginButtonPressed,
    required TResult orElse(),
  }) {
    if (googleLoginButtonPressed != null) {
      return googleLoginButtonPressed(this);
    }

    return orElse();
  }
}

abstract class GoogleLoginButtonPressed implements LoginEvent {
  const factory GoogleLoginButtonPressed() = _$GoogleLoginButtonPressedImpl;
}
