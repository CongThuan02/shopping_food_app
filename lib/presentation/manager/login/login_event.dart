part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class UpdateEmail extends LoginEvent {
  final String email;

  const UpdateEmail(this.email);

  @override
  List<Object?> get props => [email];
}

class UpdatePassword extends LoginEvent {
  final String password;

  const UpdatePassword(this.password);

  @override
  List<Object?> get props => [password];
}

class LoginEvented extends LoginEvent {}
