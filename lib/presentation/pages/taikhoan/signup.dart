import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shopping_food_app/presentation/pages/taikhoan/widget/input_text.dart';

import '../../../config/route/route_imports.gr.dart';
import '../../manager/singup/signup_bloc.dart';

@RoutePage()
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupBloc("", ""),
      child: BlocBuilder<SignupBloc, SignupState>(
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocListener<SignupBloc, SignupState>(
                listener: (context, state) {
                  if (state.isLoading == false) {
                    if (state.message != null) {
                      Alert(
                        context: context,
                        title: "${state.message}",
                      ).show();
                    } else {
                      Alert(
                        context: context,
                        title: "${state.user!.email}",
                      ).show();
                    }
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 50, color: Colors.red),
                      ),
                    ),
                    InputText(
                      name: 'Email ',
                      isPassword: false,
                      onChanged: (value) {
                        context.read<SignupBloc>().add(UpdateEmail(value));
                      },
                      iconData: Symbols.email,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    InputText(
                      name: 'Password ',
                      isPassword: true,
                      onChanged: (value) {
                        context.read<SignupBloc>().add(UpdatePassword(value));
                      },
                      iconData: Symbols.password,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<SignupBloc>().add(const SignupEvented());
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(MediaQuery.of(context).size.width, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          backgroundColor: Colors.blue[100],
                        ),
                        child: const Text("Sign up"),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don’t have an account"),
                        TextButton(
                          onPressed: () {
                            context.pushRoute(
                              const LoginScreenRoute(),
                            );
                          },
                          child: const Text("Login"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
