import 'package:flutter_with_firebase_ow/auth/structure/controllers/auth_controller.dart';
import 'package:get/get.dart';

class AuthBinding extends Bindings {
 @override
 void dependencies() {
   Get.lazyPut<AuthController>(() => AuthController());
 }
}