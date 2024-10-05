import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shagaf/core/errors/failures.dart';
import 'package:shagaf/features/auth/data/repos/auth_repo/auth_repo.dart';

import '../../../../../core/utils/functions/api_service.dart';

class AuthRepoImpl implements AuthRepo{
  final ApiService apiService;

  AuthRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, Unit>> signUp({required String phone, required String email, required String userName, required String password, required String birthDate})  async{
    try {
      await apiService.post(endPoint: 'api/users/signup', data: {
        "username" : userName,
        "birthdate" : birthDate,
        "phone" : phone,
        "password" : password,
        "email" : email,
      });
      return right(unit);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> verifyEmail({required String code, required String email}) async{
    try {
       await apiService.post(endPoint: 'api/users/verify', data: {
        "code" : code,
        "email" : email,
      });
      return right(unit);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
  @override
  Future<Either<Failure, Unit>> resendCode({required String email}) async{
    try {
      await apiService.post(endPoint: 'api/users/resend-code', data: {
        "email" : email,
      });
      return right(unit);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
  @override
  Future<Either<Failure, String>> logIn({
    required String email,
    required String password,
  }) async {
    try {
      // Send the login request
      final response = await apiService.post(endPoint: 'api/users/signin', data: {
        "email": email,
        "password": password,
      });
      // Extract the token from the response
      String token = response['data']['token']; // Adjust this based on your API response format

      return right(token);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> resetPassword({required String email}) async{
    try {
      await apiService.get(endPoint: 'api/users/reset-password', data: {
        "email" : email,
      });
      return right(unit);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}