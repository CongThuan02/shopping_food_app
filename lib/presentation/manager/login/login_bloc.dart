import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  String email = "";
  String password = "";

  LoginBloc() : super(LoginState()) {
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
    emit(LoginLoading());
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      sharedPreferences.setString("email", (userCredential.user?.email).toString());

      emit(LoginSuccess(user: userCredential.user));
    } on FirebaseAuthException catch (e) {
      emit(LoginSuccess(message: "The Email or password is incorrect"));
    }
  }
}
