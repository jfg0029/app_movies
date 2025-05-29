import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_with_firebase_ow/movies/models/movie_model.dart';


class MoviesFirebaseRepository {
  Future<void> setMoviesFirebase({required Map<String, dynamic> data}) async {
    await FirebaseFirestore.instance
        .collection("films")
        .doc(data["id"].toString())
        .set(data, SetOptions(merge: true));
  }

  Future<List<Movie>> getMoviesFirebase() async {
    try {
      final querySnapshot = await _getMoviesFirebase();

      final films = querySnapshot.docs.map((e) => e.data()).toList();
      
      return films;

    } catch (e) {
      return [];
      
    }
  }

  Future<QuerySnapshot<Movie>> _getMoviesFirebase() async {
    return await FirebaseFirestore.instance
        .collection("films")
        .withConverter(
          fromFirestore: (snapshot, _ ) => Movie.fromJson(snapshot.data()!),
          toFirestore: (activity, _ ) => activity.toJson(),
        )
        .get();
  }
}
