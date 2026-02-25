import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:hungry/core/api/dio_services.dart';
import 'package:hungry/features/auth/data/repo/auth_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<AuthRepoImpl>(
    AuthRepoImpl(dioService: DioService(dio: Dio())),
  );
}
