import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/repos/auth_repo/auth_repo.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  final AuthRepo authRepo;

  VerificationCubit(this.authRepo) : super(VerificationInitial());

  verifyEmail({
    required String email,
    required String code,
  }) async{
    emit(VerificationLoading());
    var result = await authRepo.verifyEmail(code: code, email: email);
    result.fold((l) {
      emit(VerificationFailure( errMessage: l.errorMessage,));
    }, (r) {
      emit(VerificationSuccess());
    });
  }
}
