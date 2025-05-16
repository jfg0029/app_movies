import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_ow/movies/structure/controllers/movies_controller.dart';
import 'package:flutter_with_firebase_ow/movies/widgets/movies_list_widget.dart';
import 'package:get/get.dart';

class MoviesListPopularWidget extends StatelessWidget{
  final String titleSection;
  const MoviesListPopularWidget({Key? key, 
  required this.titleSection}) 
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MoviesController>(
      init: MoviesController(),
      builder: (controller) {
        controller.getPopularMovies();

        return Obx(()=> MoviesListWidget(
          titleSection: titleSection,
          movies: controller.popularMovies.value.results,
          ));
      }
    );
  }
}