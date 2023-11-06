part of 'signup_bloc.dart';

class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class SignupEvented extends SignupEvent {
  SignupEvented();

  List<Object?> get props => [];
}

class UpdateEmail extends SignupEvent {
  final String email;

  UpdateEmail(this.email);

  List<Object?> get props => [email];
}

class UpdatePassword extends SignupEvent {
  final String password;

  UpdatePassword(this.password);

  List<Object?> get props => [password];
}
