class ValidationUtils {
  const ValidationUtils._();

  static bool isValidEmail(String email) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9.!#$%&*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
    );

    return emailRegex.hasMatch(email);
  }

  static bool isValidPassword(String password) {
    const minimumPasswordLength = 6;

    return password.length >= minimumPasswordLength;
  }
}
