import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shopping_food_app/config/route/route_imports.gr.dart';
import 'package:shopping_food_app/presentation/pages/taikhoan/widget/input_text.dart';

import '../../manager/login/login_bloc.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocListener<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state is LoginSuccess) {
                    if (state.message != null) {
                      Alert(
                        context: context,
                        title: state.message,
                      ).show();
                    } else {
                      context.pushRoute(const HomePageRoute());
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
                        context.read<LoginBloc>().add(UpdateEmail(value));
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
                        context.read<LoginBloc>().add(UpdatePassword(value));
                      },
                      iconData: Symbols.password,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          //quên mật khẩu
                        },
                        child: const Text("Forgot Password"),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<LoginBloc>().add(LoginEvented());
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(MediaQuery.of(context).size.width, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          backgroundColor: Colors.blue[100],
                        ),
                        child: const Text("Login"),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don’t have an account"),
                        TextButton(
                          onPressed: () {
                            context.pushRoute(
                              const SignUpRoute(),
                            );
                          },
                          child: const Text("Sign Up"),
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
