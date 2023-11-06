part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class UpdateEmail extends LoginEvent {
  final String email;

  UpdateEmail(this.email);

  List<Object?> get props => [email];
}

class UpdatePassword extends LoginEvent {
  final String password;

  UpdatePassword(this.password);

  List<Object?> get props => [password];
}

class LoginEvented extends LoginEvent {}
