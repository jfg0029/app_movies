import 'package:flutter/cupertino.dart';
import 'package:flutter_with_firebase_ow/movies/structure/controllers/movies_controller.dart';
import 'package:flutter_with_firebase_ow/movies/widgets/movies_list_widget.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MoviesListFirebaseWidget extends StatelessWidget {
  final String titleSection;
  const MoviesListFirebaseWidget({Key? key, 
  required this.titleSection,})
    : super(key: key);

    @override
    Widget build(BuildContext context) {
      return GetBuilder<MoviesController>(builder:(controller) {
        // Esta lista es la lista de películas populares ordenadas de mayor a menor
        //controller.getMoviesFromFirebase();
        return Obx(()=> MoviesListWidget(
          // ignore: invalid_use_of_protected_member
          movies: [], //controller.firebaseMovies.value,
          titleSection: titleSection,
        ));
      });
    }
}