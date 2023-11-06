part of 'login_bloc.dart';

class LoginState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoginInit extends LoginState {}

class LoginSuccess extends LoginState {
  final User? user;
  final String? message;
  LoginSuccess({
    this.user,
    this.message,
  });
  @override
  List<Object?> get props => [user];
}

class LoginLoading extends LoginState {}
