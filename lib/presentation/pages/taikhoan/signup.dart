import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopping_food_app/presentation/pages/taikhoan/widget/input_text.dart';

import '../../../config/route/route_imports.gr.dart';

@RoutePage()
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                print(value);
              },
            ),
            const SizedBox(
              height: 12,
            ),
            InputText(
              name: 'Password ',
              isPassword: true,
              onChanged: (value) {
                print(value);
              },
            ),
            const SizedBox(
              height: 12,
            ),
            InputText(
              name: 'Confirm Password ',
              isPassword: true,
              onChanged: (value) {
                print(value);
              },
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text("Forgot Password"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Sign up"),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  backgroundColor: Colors.blue[100],
                ),
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
