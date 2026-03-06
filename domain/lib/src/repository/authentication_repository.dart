abstract class AuthenticationRepository {
  Future<void> login(String email, String password);

  Future<void> logout();
}
