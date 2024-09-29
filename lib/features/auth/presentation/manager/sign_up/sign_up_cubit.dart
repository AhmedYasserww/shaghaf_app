import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shagaf/features/auth/data/repos/auth_repo/auth_repo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;
  signUp({required String phone,
    required String email,
    required String useName,
    required String password,
    required String birthDate,})async{
    emit(SignUpLoading());
    var result = await authRepo.signUp(phone: phone, email: email, useName: useName, password: password, birthDate: birthDate);
    result.fold((l) {
      emit(SignUpFailure( errMessage: l.errorMessage,));
    }, (r) {
      emit(SignUpSuccess());
    });
  }
}
