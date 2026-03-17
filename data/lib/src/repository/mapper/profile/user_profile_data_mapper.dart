import 'package:data/src/repository/mapper/base/base_data_mapper.dart';
import 'package:data/src/repository/model/profile/user_profile_response_data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class UserProfileDataMapper
    extends BaseDataMapper<UserProfileResponseData, User> {
  @override
  User mapToEntity(UserProfileResponseData? data) {
    return User(
      userId: data?.userId ?? 0,
      name: data?.name ?? '',
      email: data?.email ?? '',
    );
  }
}
