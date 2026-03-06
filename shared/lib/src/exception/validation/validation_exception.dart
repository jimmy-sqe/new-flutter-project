import 'package:shared/src/exception/base/app_exception.dart';

enum ValidationExceptionKind {
  invalidEmail,
  emptyEmail,
  invalidPassword,
}

class ValidationException extends AppException {
  const ValidationException({
    required this.kind,
  }) : super(AppExceptionType.validation);

  final ValidationExceptionKind kind;

  @override
  String toString() => 'ValidationException: kind=$kind';
}
