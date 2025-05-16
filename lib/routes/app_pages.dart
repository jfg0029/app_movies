import 'package:flutter_with_firebase_ow/auth/pages/loading_page.dart';
import 'package:flutter_with_firebase_ow/auth/pages/login_page.dart';
import 'package:flutter_with_firebase_ow/auth/pages/register_page.dart';
import 'package:flutter_with_firebase_ow/movies/pages/details_page.dart';
import 'package:flutter_with_firebase_ow/movies/pages/movies_home.dart';
import 'package:flutter_with_firebase_ow/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.LOADING,
      page: () => const LoadingPage()
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage()
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterPage()
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const MoviesHome()
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => const DetailsPage()
    )
  ];
}