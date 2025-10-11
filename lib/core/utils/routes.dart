import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry/features/auth/presentation/views/login_view.dart';
import 'package:hungry/features/auth/presentation/views/signup_view.dart';
import 'package:hungry/features/home/presentation/views/home_view.dart';
import 'package:hungry/features/home/presentation/views/product_details_view.dart';
import 'package:hungry/features/roots.dart';
import 'package:hungry/features/splash/splash_view.dart';

class AppRoutes {
  static const String login = '/login';
  static const String signUp = '/sign-up';
  static const String home = '/home';
  static const String root = '/root';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/login',
            builder: (BuildContext context, GoRouterState state) {
              return const LoginView();
            },
          ),
          GoRoute(
            path: '/sign-up',
            builder: (BuildContext context, GoRouterState state) {
              return const SignupView();
            },
          ),
          GoRoute(
            path: '/home',
            builder: (BuildContext context, GoRouterState state) {
              return const HomeView();
            },
          ),
          GoRoute(
            path: '/root',
            builder: (BuildContext context, GoRouterState state) {
              return const Root();
            },
          ),
          GoRoute(
            path: '/product-details',
            builder: (BuildContext context, GoRouterState state) {
              return const ProductDetailsView();
            },
          ),
        ],
      ),
    ],
  );
}
