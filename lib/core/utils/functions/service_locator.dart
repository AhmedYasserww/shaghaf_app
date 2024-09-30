import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shagaf/features/auth/data/repos/auth_repo/auth_repo_impl.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<AuthRepoImpl>(AuthRepoImpl(
     apiService: getIt.get<ApiService>(),
  ));
}
