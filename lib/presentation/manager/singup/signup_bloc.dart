import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'signup_event.dart';

part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupState(isLoading: false)) {
    on<SignupEvent>((event, emit) {});
    on<SignupEvented>((event, emit) => signUp(emit, event));
  }

  signUp(Emitter<SignupState> emit, SignupEvented event) async {
    final String email = "";
    final String password = "";
    void updateEmail({required String email}) {
      email = email;
    }

    void updatePassword({required String password}) {
      password = password;
    }

    emit(state.copyWith(isLoading: true));
    try {
      UserCredential a = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(state.copyWith(user: a.user, isLoading: false));
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(message: e.message, isLoading: false));
    }
  }
}
