//
//  routes.dart
//

import 'package:agency/presentation/dashboard_page.dart';
import 'package:agency/presentation/login_page.dart';
import 'package:agency/presentation/mail_page.dart';
import 'package:agency/presentation/main_bottom_tab.dart';
import 'package:agency/presentation/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNavigationHelper {
  static final CustomNavigationHelper _instance =
      CustomNavigationHelper._internal();

  static CustomNavigationHelper get instance => _instance;

  static late final GoRouter router;

  static final GlobalKey<NavigatorState> parentNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> homeTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> searchTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> settingsTabNavigatorKey =
      GlobalKey<NavigatorState>();

  BuildContext get context =>
      router.routerDelegate.navigatorKey.currentContext!;

  GoRouterDelegate get routerDelegate => router.routerDelegate;

  GoRouteInformationParser get routeInformationParser =>
      router.routeInformationParser;

  static const String loginPagePath = '/loginPage';
  static const String dashboardPage = '/dashboardPage';
  static const String mailPage = '/mailPage';
  static const String settingPage = '/settingPage';

  factory CustomNavigationHelper() {
    return _instance;
  }

  CustomNavigationHelper._internal() {
    final routes = [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: parentNavigatorKey,
        branches: [
          StatefulShellBranch(
            navigatorKey: homeTabNavigatorKey,
            routes: [
              GoRoute(
                path: dashboardPage,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(
                    child: const DashboardPage(),
                    state: state,
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: searchTabNavigatorKey,
            routes: [
              GoRoute(
                path: mailPage,
                pageBuilder: (context, state) {
                  return getPage(
                    child: const MailPage(),
                    state: state,
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: settingsTabNavigatorKey,
            routes: [
              GoRoute(
                path: settingPage,
                pageBuilder: (context, state) {
                  return getPage(
                    child: const SettingPage(),
                    state: state,
                  );
                },
              ),
            ],
          ),
        ],
        pageBuilder: (
          BuildContext context,
          GoRouterState state,
          StatefulNavigationShell navigationShell,
        ) {
          return getPage(
            child: BottomNavigationPage(
              child: navigationShell,
            ),
            state: state,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: parentNavigatorKey,
        path: dashboardPage,
        pageBuilder: (context, state) {
          return getPage(
            child: const DashboardPage(),
            state: state,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: parentNavigatorKey,
        path: mailPage,
        pageBuilder: (context, state) {
          return getPage(
            child: const MailPage(),
            state: state,
          );
        },
      ),
      GoRoute(
        path: loginPagePath,
        pageBuilder: (context, state) {
          return getPage(
            child: const LoginPage(),
            state: state,
          );
        },
      ),
    ];

    router = GoRouter(
      navigatorKey: parentNavigatorKey,
      initialLocation: loginPagePath,
      routes: routes,
    );
  }

  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return MaterialPage(
      key: state.pageKey,
      child: child,
    );
  }
}
