import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopping_food_app/config/route/route_imports.gr.dart';
import 'package:shopping_food_app/presentation/pages/taikhoan/widget/input_text.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
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
            SizedBox(
              height: 12,
            ),
            InputText(
              name: 'Password ',
              isPassword: true,
              onChanged: (value) {
                print(value);
              },
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text("Forgot Password"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
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
                Text("Don’t have an account"),
                TextButton(
                  onPressed: () {
                    context.pushRoute(
                      SignUpRoute(),
                    );
                  },
                  child: Text("Sign Up"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
