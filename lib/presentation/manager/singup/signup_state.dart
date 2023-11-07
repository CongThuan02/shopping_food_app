part of 'signup_bloc.dart';

class SignupState extends Equatable {
  final bool isLoading;
  final User? user;
  final String? message;

  const SignupState({
    required this.isLoading,
    this.user,
    this.message,
  });

  SignupState copyWith({
    final bool? isLoading,
    final User? user,
    final String? message,
  }) {
    return SignupState(
      isLoading: isLoading ?? this.isLoading,
      user: user ?? this.user,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [isLoading, user];
}
