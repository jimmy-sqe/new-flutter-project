import 'package:domain/src/usecase/base/io/base_input.dart';
import 'package:domain/src/usecase/base/io/base_output.dart';
import 'package:meta/meta.dart';
import 'package:shared/shared.dart';

abstract class BaseUseCase<Input extends BaseInput, Output extends BaseOutput>
    with LogMixin {
  const BaseUseCase();

  @protected
  Future<Output> buildUseCase(Input input);
}
