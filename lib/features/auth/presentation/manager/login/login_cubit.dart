import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shagaf/features/auth/data/repos/auth_repo/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());
  final AuthRepo authRepo;
  login({
    required String email,
    required String password,
  }) async{
    emit(LoginLoading());
    var result = await authRepo.logIn(email: email, password: password);
    result.fold((l) {
      emit(LoginFailure( errMessage: l.errorMessage,));
    }, (token) {
      emit(LoginSuccess(token: token.toString()));
    });
  }
}
