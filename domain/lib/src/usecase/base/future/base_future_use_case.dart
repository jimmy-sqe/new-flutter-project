import 'package:domain/src/usecase/base/base_use_case.dart';
import 'package:domain/src/usecase/base/io/base_input.dart';
import 'package:domain/src/usecase/base/io/base_output.dart';

abstract class BaseFutureUseCase<Input extends BaseInput,
    Output extends BaseOutput> extends BaseUseCase<Input, Output> {
  const BaseFutureUseCase();

  Future<Output> execute(Input input) async {
    logD('execute: input=$input');
    try {
      final output = await buildUseCase(input);
      logD('execute: output=$output');

      return output;
    } catch (error) {
      logE('execute: error=$error');
      rethrow;
    }
  }
}
