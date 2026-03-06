import 'package:shared/src/exception/base/app_exception.dart';

abstract class ExceptionMapper<T extends AppException> {
  T map(Object? exception);
}
