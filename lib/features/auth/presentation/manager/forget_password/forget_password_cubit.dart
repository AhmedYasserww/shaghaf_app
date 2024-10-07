import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/repos/auth_repo/auth_repo.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit(this.authRepo) : super(ForgetPasswordInitial());
  final AuthRepo authRepo;
  resetPassword({
    required String email,
  }) async {
    emit(ForgetPasswordLoading());
    var result = await authRepo.resetPassword(email: email);
    result.fold((l) {
      emit(ForgetPasswordFailure(
        errMessage: l.errorMessage,
      ));
    }, (r) {
      emit(ForgetPasswordSuccess());
    });
  }
}
