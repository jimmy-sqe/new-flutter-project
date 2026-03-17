// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileResponseDataImpl _$$UserProfileResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileResponseDataImpl(
      userId: (json['user_id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
    );

Map<String, dynamic> _$$UserProfileResponseDataImplToJson(
        _$UserProfileResponseDataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'email': instance.email,
    };
