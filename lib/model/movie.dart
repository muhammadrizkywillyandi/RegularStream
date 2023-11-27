// To parse this JSON data, do
//
//     final movie = movieFromJson(jsonString);

import 'dart:convert';

List<Movie> movieFromJson(String str) =>
    List<Movie>.from(json.decode(str).map((x) => Movie.fromJson(x)));

String movieToJson(List<Movie> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Movie {
  int id;
  String title;
  String coverLandscape;
  String coverPotrait;
  String genre;
  String type;

  Movie({
    required this.id,
    required this.title,
    required this.coverLandscape,
    required this.coverPotrait,
    required this.genre,
    required this.type,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json["id"],
        title: json["title"],
        coverLandscape: json["cover_landscape"],
        coverPotrait: json["cover_potrait"],
        genre: json["genre"],
        type: json["type"],
      );

  String? get name => null;

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "cover_landscape": coverLandscape,
        "cover_potrait": coverPotrait,
        "genre": genre,
        "type": type,
      };
}
