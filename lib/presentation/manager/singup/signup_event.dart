part of 'signup_bloc.dart';

class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  List<Object?> get props => [];
}

class SignupEvented extends SignupEvent {
  const SignupEvented();

  @override
  List<Object?> get props => [];
}

class UpdateEmail extends SignupEvent {
  final String email;

  const UpdateEmail(this.email);

  @override
  List<Object?> get props => [email];
}

class UpdatePassword extends SignupEvent {
  final String password;

  const UpdatePassword(this.password);

  @override
  List<Object?> get props => [password];
}
