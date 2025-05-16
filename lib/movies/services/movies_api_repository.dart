import 'package:http/http.dart' as http;

class MoviesApiRepository {

  Future<http.Response> getReqResPopularMovies() async {
    final Map<String, dynamic> queryParameters = { 
      "api_key" : "a546dcd9683df20515a5211f9a01522e",
      "language" : "es-ES",
      "page" : "1",
    };
    var url = Uri.https("api.themoviedb.org", "/3/movie/popular", queryParameters);

    return await http.get(url, headers: {});
  }
}