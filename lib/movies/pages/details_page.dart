import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_ow/movies/models/movie_model.dart';
import 'package:flutter_with_firebase_ow/movies/services/movies_firebase_repository.dart';
import 'package:flutter_with_firebase_ow/routes/app_routes.dart';
import 'package:flutter_with_firebase_ow/themes/colors_theme.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  final String? src;
  final Movie? movie;
  const DetailsPage({super.key, this.movie, this.src});

  @override
  Widget build(BuildContext context) {
    // Manejo de casos nulos
    if (src == null || movie == null) {
      return Scaffold(
        backgroundColor: AppColors.darkBackground,
        body: const Center(
          child: Text(
            'Error: Película o imagen no disponible',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // No necesitas ! porque ya verificamos que movie no es null
          print(movie!.toJson());
          final Map<String, dynamic> data = movie!.toJson();
          print(data);
          MoviesFirebaseRepository().setMoviesFirebase(data: data);
        },
        child: const Icon(Icons.add, size: 40),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 350,
              child: Stack(
                children: [
                  Image.network(
                    src!, // Ya verificamos que src no es null
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: const Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 75, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 35,
                          ),
                          onPressed: () {
                            Get.offAllNamed(Routes.HOME);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie!.originalTitle ??
                        'Título no disponible', // Manejo de originalTitle nulo
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    movie!.overview ??
                        'Descripción no disponible', // Manejo de overview nulo
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
