import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_food_app/config/route/route_imports.gr.dart';

@RoutePage()
class SplatScreen extends StatefulWidget {
  const SplatScreen({super.key});

  @override
  State<SplatScreen> createState() => _SplatScreenState();
}

class _SplatScreenState extends State<SplatScreen> {
  Future<String> getEmail() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final action = sharedPreferences.getString('email');
    return action.toString();
  }

  @override
  void initState() {
    super.initState();
    final email = getEmail();
    // ignore: unnecessary_null_comparison
    if (email == null) {
      AutoRouter.of(context).push(
        const LoginScreenRoute(),
      );
    } else {
      AutoRouter.of(context).push(
        const HomePageRoute(),
      );
    }
    AutoRouter.of(context).push(
      const LoginScreenRoute(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("assets/images/logo.png"),
    );
  }
}
