// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:shopping_food_app/presentation/pages/homepage/homepage.dart'
    as _i1;
import 'package:shopping_food_app/presentation/pages/promopage/promo_page.dart'
    as _i4;
import 'package:shopping_food_app/presentation/pages/taikhoan/login.dart'
    as _i2;
import 'package:shopping_food_app/presentation/pages/taikhoan/signup.dart'
    as _i3;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.HomePage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SignUp(),
      );
    },
    PromoPageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.PromoPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i5.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({
    _i6.Key? key,
    required String email,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          HomePageRoute.name,
          args: HomePageRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i5.PageInfo<HomePageRouteArgs> page =
      _i5.PageInfo<HomePageRouteArgs>(name);
}

class HomePageRouteArgs {
  const HomePageRouteArgs({
    this.key,
    required this.email,
  });

  final _i6.Key? key;

  final String email;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i5.PageRouteInfo<void> {
  const LoginScreenRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreenRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SignUp]
class SignUpRoute extends _i5.PageRouteInfo<void> {
  const SignUpRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.PromoPage]
class PromoPageRoute extends _i5.PageRouteInfo<void> {
  const PromoPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          PromoPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'PromoPageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
