import 'package:cloud_firestore/cloud_firestore.dart';

class MoviesFirebaseRepository {

  Future<void> setMoviesFirebase({required Map<String, dynamic>data})async {
    await FirebaseFirestore.instance
    .collection("films")
    .doc(data["id"].toString())
    .set(data, SetOptions(merge: true));
  }
}