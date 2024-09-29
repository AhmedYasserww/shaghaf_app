import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shagaf/core/errors/failures.dart';
import 'package:shagaf/features/auth/data/repos/auth_repo/auth_repo.dart';

import '../../../../../core/utils/api_serivce.dart';

class AuthRepoImpl implements AuthRepo{
  final ApiService apiService;

  AuthRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, Unit>> signUp({required String phone, required String email, required String useName, required String password, required String birthDate})  async{
    try {
      var data = await apiService.post(endPoint: 'api/users/signup', data: {
        "username" : useName,
        "birthdate" : birthDate,
        "phone" : phone,
        "password" : password,
        "email" : email,
      });
      return right(unit);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> verifyEmail({required String code, required String email}) async{
    try {
      var data = await apiService.post(endPoint: 'api/users/signup', data: {
        "code" : code,
        "email" : email,
      });
      return right(unit);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}