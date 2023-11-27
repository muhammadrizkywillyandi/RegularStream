import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/model/movie.dart';
import 'package:flutter_application_1/common/url_address.dart';

class ApiMovies {
  Future<List<Movie>> listOfMovie() async {
    final response = await http.get(Uri.parse("$urlMovie/Movie"));
    if (response.statusCode == 200) {
      return List<Movie>.from(
          json.decode(response.body).map((x) => Movie.fromJson(x)));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<Movie> getDetail(int id) async {
    final response = await http.get(Uri.parse("$urlMovie/Movie/$id"));
    if (response.statusCode == 200) {
      return Movie.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<Movie> createMovie(String name) async {
    final response = await http.post(
      Uri.parse('$urlMovie/Movie'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': name,
      }),
    );

    if (response.statusCode == 201) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return Movie.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create Task.');
    }
  }
}
