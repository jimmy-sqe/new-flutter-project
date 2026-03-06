import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

import 'package:app/base/bloc/base_bloc_event.dart';

part 'common_event.freezed.dart';

@freezed
class CommonEvent extends BaseBlocEvent with _$CommonEvent {
  const factory CommonEvent.exceptionEmitted({
    required AppExceptionWrapper appExceptionWrapper,
  }) = ExceptionEmitted;

  const factory CommonEvent.loadingVisibilityEmitted({
    required bool isLoading,
  }) = LoadingVisibilityEmitted;

  const factory CommonEvent.forceLogoutButtonPressed() =
      ForceLogoutButtonPressed;
}
