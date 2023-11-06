import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'signup_event.dart';

part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  String email;
  String password;

  SignupBloc(this.email, this.password) : super(SignupState(isLoading: true)) {
    on<SignupEvent>((event, emit) {});
    on<SignupEvented>((event, emit) => signUp(emit, event));
    on<UpdateEmail>((event, emit) => updateEmail(emit, event));
    on<UpdatePassword>((event, emit) => updatePassword(emit, event));
  }

  signUp(Emitter<SignupState> emit, SignupEvented event) async {
    emit(state.copyWith(isLoading: true));
    try {
      UserCredential a = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(state.copyWith(user: a.user, isLoading: false));
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(message: e.message, isLoading: false));
    }
  }

  updateEmail(Emitter<SignupState> emit, UpdateEmail event) {
    email = event.email;
  }

  updatePassword(Emitter<SignupState> emit, UpdatePassword event) {
    password = event.password;
  }
}
