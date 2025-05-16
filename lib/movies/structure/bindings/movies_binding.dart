import 'package:flutter_with_firebase_ow/movies/structure/controllers/movies_controller.dart';
import 'package:get/get.dart';

class MoviesBinding extends Bindings {
 @override
 void dependencies() {
   Get.lazyPut<MoviesController>(() => MoviesController());
 }
}