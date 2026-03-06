import 'package:data/src/repository/mapper/base/base_data_mapper.dart';
import 'package:data/src/repository/model/auth/auth_response_data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class UserDataMapper extends BaseDataMapper<AuthResponseData, User> {
  @override
  User mapToEntity(AuthResponseData? data) {
    return User(
      email: data?.accessToken ?? '',
    );
  }
}
