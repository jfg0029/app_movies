import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_ow/auth/structure/controllers/auth_controller.dart';
import 'package:flutter_with_firebase_ow/firebase_options.dart';
import 'package:flutter_with_firebase_ow/routes/app_pages.dart';
import 'package:flutter_with_firebase_ow/routes/app_routes.dart';
import 'package:get/get.dart';


void main() async{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      getPages: AppPages.routes,
      initialRoute: Routes.HOME,
      initialBinding: BindingsBuilder((){
        Get.put<AuthController>(AuthController());
      }),
    );
  }
}
