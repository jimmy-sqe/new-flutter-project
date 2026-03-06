import 'package:flutter_test/flutter_test.dart';
import 'package:shared/shared.dart';

void main() {
  group('ValidationUtils', () {
    test('isValidEmail returns true for valid email', () {
      expect(ValidationUtils.isValidEmail('test@example.com'), isTrue);
    });

    test('isValidEmail returns false for invalid email', () {
      expect(ValidationUtils.isValidEmail('invalid-email'), isFalse);
    });

    test('isValidPassword returns true for valid password', () {
      expect(ValidationUtils.isValidPassword('123456'), isTrue);
    });

    test('isValidPassword returns false for short password', () {
      expect(ValidationUtils.isValidPassword('123'), isFalse);
    });
  });
}
