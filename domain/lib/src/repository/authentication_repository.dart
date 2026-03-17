abstract class AuthenticationRepository {
  Future<void> login(String email, String password);

  Future<void> loginWithGoogle();

  Future<void> logout();
}
