part of 'login_bloc.dart';

class LoginState extends Equatable {
  final User? user;
  final bool isLoading;
  final String? message;

  const LoginState({
    this.user,
    required this.isLoading,
    this.message,
  });

  LoginState copyWith({
    final User? user,
    final bool? isLoading,
    final String? message,
  }) {
    return LoginState(
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      message: message ?? this.message,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [user, isLoading, message];
}
