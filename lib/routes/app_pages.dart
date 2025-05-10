import 'package:flutter_with_firebase_ow/auth/pages/loading_page.dart';
import 'package:flutter_with_firebase_ow/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.LOADING,
      page: () => const LoadingPage()
    )
  ];
}