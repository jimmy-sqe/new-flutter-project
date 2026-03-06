import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    @Default(0) int userId,
    @Default('') String name,
    @Default('') String email,
  }) = _User;
}
