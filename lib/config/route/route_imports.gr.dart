// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:shopping_food_app/presentation/pages/detail/detail.dart' as _i6;
import 'package:shopping_food_app/presentation/pages/homepage/homepage.dart'
    as _i1;
import 'package:shopping_food_app/presentation/pages/promopage/promo_page.dart'
    as _i4;
import 'package:shopping_food_app/presentation/pages/splat/splat.dart' as _i5;
import 'package:shopping_food_app/presentation/pages/taikhoan/login.dart'
    as _i2;
import 'package:shopping_food_app/presentation/pages/taikhoan/signup.dart'
    as _i3;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SignUp(),
      );
    },
    PromoPageRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.PromoPage(),
      );
    },
    SplatScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SplatScreen(),
      );
    },
    DetailRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Detail(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i7.PageRouteInfo<void> {
  const HomePageRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i7.PageRouteInfo<void> {
  const LoginScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SignUp]
class SignUpRoute extends _i7.PageRouteInfo<void> {
  const SignUpRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.PromoPage]
class PromoPageRoute extends _i7.PageRouteInfo<void> {
  const PromoPageRoute({List<_i7.PageRouteInfo>? children})
      : super(
          PromoPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'PromoPageRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SplatScreen]
class SplatScreenRoute extends _i7.PageRouteInfo<void> {
  const SplatScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplatScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplatScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.Detail]
class DetailRoute extends _i7.PageRouteInfo<void> {
  const DetailRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
