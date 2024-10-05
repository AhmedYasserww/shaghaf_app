import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shagaf/features/auth/data/repos/auth_repo/auth_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo authRepo;

  LoginCubit(this.authRepo) : super(LoginInitial());

  Future<void> login({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    var result = await authRepo.logIn(email: email, password: password);
    result.fold((l) {
      emit(LoginFailure(errMessage: l.errorMessage));
    }, (token) async {
      // Save the token in SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('auth_token', token);  // Assuming token is a string

      emit(LoginSuccess());
    });
  }
}
