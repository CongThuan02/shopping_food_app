import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  String email = "";
  String password = "";

  LoginBloc() : super(const LoginState(isLoading: true)) {
    on<LoginEvent>((event, emit) {});
    on<UpdateEmail>(((event, emit) => updateEmail(emit, event)));
    on<UpdatePassword>(((event, emit) => updatePassword(emit, event)));
    on<LoginEvented>((event, emit) => login(emit, event));
  }

  updateEmail(Emitter<LoginState> emit, UpdateEmail event) {
    email = event.email;
  }

  updatePassword(Emitter<LoginState> emit, UpdatePassword event) {
    password = event.password;
  }

  login(Emitter<LoginState> emit, LoginEvented event) async {
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
