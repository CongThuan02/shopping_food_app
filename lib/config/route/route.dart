part of 'route_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplatScreenRoute.page,
          path: "/",
          initial: true,
        ),
        AutoRoute(
          page: PromoPageRoute.page,
        ),
        AutoRoute(
          page: HomePageRoute.page,
        ),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: LoginScreenRoute.page),
        AutoRoute(page: DetailRoute.page)
      ];
}
