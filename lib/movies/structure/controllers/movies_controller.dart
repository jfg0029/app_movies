import 'package:flutter_with_firebase_ow/movies/models/popular_movies_model.dart';
import 'package:flutter_with_firebase_ow/movies/services/movies_repository.dart';
import 'package:get/get.dart';

class MoviesController extends GetxController{
  Rx<PopularMovies> popularMovies = PopularMovies().obs;

  Future<void> getPopularMovies() async {
    final PopularMovies newPopularMovies = await MoviesRepository().popularMovies();

    popularMovies.value = newPopularMovies;
  }
}