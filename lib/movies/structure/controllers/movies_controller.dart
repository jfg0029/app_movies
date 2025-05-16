import 'package:flutter_with_firebase_ow/movies/models/movie_model.dart';
import 'package:flutter_with_firebase_ow/movies/models/popular_movies_model.dart';
import 'package:flutter_with_firebase_ow/movies/services/movies_firebase_repository.dart';
import 'package:flutter_with_firebase_ow/movies/services/movies_repository.dart';
import 'package:get/get.dart';

class MoviesController extends GetxController{
  Rx<PopularMovies> popularMovies = PopularMovies().obs;
  RxList<Movie> firebaseMovies = <Movie>[].obs;

  Future<void> getPopularMovies() async {
    final PopularMovies newPopularMovies = await MoviesRepository().popularMovies();

    popularMovies.value = newPopularMovies;
  }

  Future<void> getMoviesFromFirebase() async {
    final List<Movie> newMovies = 
    await MoviesFirebaseRepository().getMoviesFirebase();
    firebaseMovies.value = newMovies;

  }
}