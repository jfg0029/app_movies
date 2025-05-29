import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_ow/auth/structure/controllers/auth_controller.dart';
//import 'package:flutter_with_firebase_ow/movies/structure/controllers/movies_controller.dart';
//import 'package:flutter_with_firebase_ow/auth/structure/controllers/auth_controller.dart';
import 'package:flutter_with_firebase_ow/movies/widgets/section_film_widget.dart';
//import 'package:get/get.dart';

class MoviesHome extends StatelessWidget {
  const MoviesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //AuthController authController = Get.find();
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "1",
            child: const Icon(Icons.close),
            onPressed: () {
              AuthController().signOut();
            },
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            heroTag: "2",
            child: const Icon(Icons.read_more),
            onPressed: () {
              //MoviesController moviesController = Get.put(MoviesController());
              //moviesController.getMoviesFromFirebase();
            },
          ),
        ],
      ),
      appBar: AppBar(
        title: const Center(
          child: Text("MIS PELÍCULAS", style: TextStyle(color: Colors.blue)),
        ),
      ),
      backgroundColor: const Color.fromRGBO(91, 161, 210, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [Flexible(flex: 2, child: SectionFilmsWidget())],
      ),
    );
  }
}
