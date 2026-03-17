// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_response_data.freezed.dart';
part 'user_profile_response_data.g.dart';

@freezed
class UserProfileResponseData with _$UserProfileResponseData {
  const factory UserProfileResponseData({
    @JsonKey(name: 'user_id') @Default(0) int userId,
    @Default('') String name,
    @Default('') String email,
  }) = _UserProfileResponseData;

  factory UserProfileResponseData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseDataFromJson(json);
}
