// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileResponseData _$UserProfileResponseDataFromJson(
    Map<String, dynamic> json) {
  return _UserProfileResponseData.fromJson(json);
}

/// @nodoc
mixin _$UserProfileResponseData {
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Serializes this UserProfileResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileResponseDataCopyWith<UserProfileResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponseDataCopyWith<$Res> {
  factory $UserProfileResponseDataCopyWith(UserProfileResponseData value,
          $Res Function(UserProfileResponseData) then) =
      _$UserProfileResponseDataCopyWithImpl<$Res, UserProfileResponseData>;
  @useResult
  $Res call({@JsonKey(name: 'user_id') int userId, String name, String email});
}

/// @nodoc
class _$UserProfileResponseDataCopyWithImpl<$Res,
        $Val extends UserProfileResponseData>
    implements $UserProfileResponseDataCopyWith<$Res> {
  _$UserProfileResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileResponseDataImplCopyWith<$Res>
    implements $UserProfileResponseDataCopyWith<$Res> {
  factory _$$UserProfileResponseDataImplCopyWith(
          _$UserProfileResponseDataImpl value,
          $Res Function(_$UserProfileResponseDataImpl) then) =
      __$$UserProfileResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user_id') int userId, String name, String email});
}

/// @nodoc
class __$$UserProfileResponseDataImplCopyWithImpl<$Res>
    extends _$UserProfileResponseDataCopyWithImpl<$Res,
        _$UserProfileResponseDataImpl>
    implements _$$UserProfileResponseDataImplCopyWith<$Res> {
  __$$UserProfileResponseDataImplCopyWithImpl(
      _$UserProfileResponseDataImpl _value,
      $Res Function(_$UserProfileResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$UserProfileResponseDataImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileResponseDataImpl implements _UserProfileResponseData {
  const _$UserProfileResponseDataImpl(
      {@JsonKey(name: 'user_id') this.userId = 0,
      this.name = '',
      this.email = ''});

  factory _$UserProfileResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'UserProfileResponseData(userId: $userId, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileResponseDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, name, email);

  /// Create a copy of UserProfileResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileResponseDataImplCopyWith<_$UserProfileResponseDataImpl>
      get copyWith => __$$UserProfileResponseDataImplCopyWithImpl<
          _$UserProfileResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileResponseDataImplToJson(
      this,
    );
  }
}

abstract class _UserProfileResponseData implements UserProfileResponseData {
  const factory _UserProfileResponseData(
      {@JsonKey(name: 'user_id') final int userId,
      final String name,
      final String email}) = _$UserProfileResponseDataImpl;

  factory _UserProfileResponseData.fromJson(Map<String, dynamic> json) =
      _$UserProfileResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String get name;
  @override
  String get email;

  /// Create a copy of UserProfileResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileResponseDataImplCopyWith<_$UserProfileResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
