part of 'signup_bloc.dart';

class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class SignupEvented extends SignupEvent {
  final String email;
  final String password;

  SignupEvented(this.email, this.password);

  List<Object?> get props => [email, password];
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
