import 'package:dartz/dartz.dart';
import 'package:shagaf/core/errors/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure, Unit>> signUp({
    required String phone,
    required String email,
    required String useName,
    required String password,
    required String birthDate,
  });Future<Either<Failure, Unit>> verifyEmail({
    required String code,
    required String email,
  });
}
