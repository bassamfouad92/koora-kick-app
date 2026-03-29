import 'package:koora_kick/common/http/network_client.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/common/user/request/get_user_profile_request.dart';
import 'package:koora_kick/features/signup/create_account/data/models/register_response.dart';
import 'package:koora_kick/features/signup/create_account/data/requests/register_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract interface class UserRepository {
  Future<Result<RegisterResponse>> create(RegisterRequest request);
  Future<Result<User>> getMe();
  Future<Result<void>> delete();
}

final userRepositoryProvider = Provider(UserRepositoryImpl.new);

class UserRepositoryImpl implements UserRepository {

  UserRepositoryImpl(this._ref);

  late final networkClient = _ref.read(networkProvider);
  final Ref _ref;

  @override
  Future<Result<RegisterResponse>> create(RegisterRequest request) async {
    final response = await networkClient.execute(request);
    return response.when(
      success: (registerResponse) async => Result.success(registerResponse),
      error: (exception) async => Result.error(exception),
    );
  }

  @override
  Future<Result<User>> getMe() async {
    final response = await networkClient.execute(GetUserProfileRequest());
    return response.when(
      success: (profile) async => Result.success(User(
        id: profile.id,
        name: profile.name,
        phone: profile.phone,
        picture: profile.picture,
        rating: profile.rating,
        documentVerificationStatus: profile.documentVerificationStatus,
      )),
      error: (exception) async => Result.error(exception),
    );
  }

  @override
  Future<Result<void>> delete() async => Result.success(null);
}