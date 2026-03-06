// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_response.freezed.dart';
part 'data_response.g.dart';

@Freezed(genericArgumentFactories: true)
class DataResponse<T> with _$DataResponse<T> {
  const factory DataResponse({
    @JsonKey(name: 'data') T? data,
    @JsonKey(name: 'message') @Default('') String message,
    @JsonKey(name: 'status') @Default(0) int status,
  }) = _DataResponse;

  factory DataResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$DataResponseFromJson(json, fromJsonT);
}
