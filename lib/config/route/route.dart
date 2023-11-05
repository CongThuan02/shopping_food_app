part of 'route_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomePageRoute.page,
          path: "/",
          initial: true,
        ),
        AutoRoute(
          page: PromoPageRoute.page,
        ),
      ];
}
