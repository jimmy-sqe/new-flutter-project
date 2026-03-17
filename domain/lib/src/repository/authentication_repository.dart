import 'package:domain/src/entity/user/user.dart';

abstract class AuthenticationRepository {
  Future<void> login(String email, String password);

  Future<void> loginWithGoogle();

  Future<void> logout();

  Future<User> getUserProfile();
}
