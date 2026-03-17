// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_profile_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetUserProfileInput {}

/// @nodoc
abstract class $GetUserProfileInputCopyWith<$Res> {
  factory $GetUserProfileInputCopyWith(
          GetUserProfileInput value, $Res Function(GetUserProfileInput) then) =
      _$GetUserProfileInputCopyWithImpl<$Res, GetUserProfileInput>;
}

/// @nodoc
class _$GetUserProfileInputCopyWithImpl<$Res, $Val extends GetUserProfileInput>
    implements $GetUserProfileInputCopyWith<$Res> {
  _$GetUserProfileInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserProfileInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserProfileInputImplCopyWith<$Res> {
  factory _$$GetUserProfileInputImplCopyWith(_$GetUserProfileInputImpl value,
          $Res Function(_$GetUserProfileInputImpl) then) =
      __$$GetUserProfileInputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserProfileInputImplCopyWithImpl<$Res>
    extends _$GetUserProfileInputCopyWithImpl<$Res, _$GetUserProfileInputImpl>
    implements _$$GetUserProfileInputImplCopyWith<$Res> {
  __$$GetUserProfileInputImplCopyWithImpl(_$GetUserProfileInputImpl _value,
      $Res Function(_$GetUserProfileInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUserProfileInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserProfileInputImpl implements _GetUserProfileInput {
  const _$GetUserProfileInputImpl();

  @override
  String toString() {
    return 'GetUserProfileInput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileInputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _GetUserProfileInput implements GetUserProfileInput {
  const factory _GetUserProfileInput() = _$GetUserProfileInputImpl;
}

/// @nodoc
mixin _$GetUserProfileOutput {
  User get userProfile => throw _privateConstructorUsedError;

  /// Create a copy of GetUserProfileOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUserProfileOutputCopyWith<GetUserProfileOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserProfileOutputCopyWith<$Res> {
  factory $GetUserProfileOutputCopyWith(GetUserProfileOutput value,
          $Res Function(GetUserProfileOutput) then) =
      _$GetUserProfileOutputCopyWithImpl<$Res, GetUserProfileOutput>;
  @useResult
  $Res call({User userProfile});

  $UserCopyWith<$Res> get userProfile;
}

/// @nodoc
class _$GetUserProfileOutputCopyWithImpl<$Res,
        $Val extends GetUserProfileOutput>
    implements $GetUserProfileOutputCopyWith<$Res> {
  _$GetUserProfileOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserProfileOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = null,
  }) {
    return _then(_value.copyWith(
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  /// Create a copy of GetUserProfileOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get userProfile {
    return $UserCopyWith<$Res>(_value.userProfile, (value) {
      return _then(_value.copyWith(userProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetUserProfileOutputImplCopyWith<$Res>
    implements $GetUserProfileOutputCopyWith<$Res> {
  factory _$$GetUserProfileOutputImplCopyWith(_$GetUserProfileOutputImpl value,
          $Res Function(_$GetUserProfileOutputImpl) then) =
      __$$GetUserProfileOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User userProfile});

  @override
  $UserCopyWith<$Res> get userProfile;
}

/// @nodoc
class __$$GetUserProfileOutputImplCopyWithImpl<$Res>
    extends _$GetUserProfileOutputCopyWithImpl<$Res, _$GetUserProfileOutputImpl>
    implements _$$GetUserProfileOutputImplCopyWith<$Res> {
  __$$GetUserProfileOutputImplCopyWithImpl(_$GetUserProfileOutputImpl _value,
      $Res Function(_$GetUserProfileOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUserProfileOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = null,
  }) {
    return _then(_$GetUserProfileOutputImpl(
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$GetUserProfileOutputImpl implements _GetUserProfileOutput {
  const _$GetUserProfileOutputImpl({required this.userProfile});

  @override
  final User userProfile;

  @override
  String toString() {
    return 'GetUserProfileOutput(userProfile: $userProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileOutputImpl &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userProfile);

  /// Create a copy of GetUserProfileOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserProfileOutputImplCopyWith<_$GetUserProfileOutputImpl>
      get copyWith =>
          __$$GetUserProfileOutputImplCopyWithImpl<_$GetUserProfileOutputImpl>(
              this, _$identity);
}

abstract class _GetUserProfileOutput implements GetUserProfileOutput {
  const factory _GetUserProfileOutput({required final User userProfile}) =
      _$GetUserProfileOutputImpl;

  @override
  User get userProfile;

  /// Create a copy of GetUserProfileOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserProfileOutputImplCopyWith<_$GetUserProfileOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
