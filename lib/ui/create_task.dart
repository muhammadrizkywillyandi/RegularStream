import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/movie.dart';
import 'package:flutter_application_1/api/api_movie.dart';
import 'dart:async';
// import 'dart:convert';

class CreateMoviePage extends StatefulWidget {
  const CreateMoviePage({super.key});

  @override
  State<CreateMoviePage> createState() {
    return _CreateMoviePageState();
  }
}

class _CreateMoviePageState extends State<CreateMoviePage> {
  final TextEditingController _controller = TextEditingController();
  Future<Movie>? _futureMovie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Data Example'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: (_futureMovie == null) ? buildColumn() : buildFutureBuilder(),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Enter Movie Name'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureMovie = ApiMovies().createMovie(_controller.text);
            });
          },
          child: const Text('Create Data'),
        ),
      ],
    );
  }

  FutureBuilder<Movie> buildFutureBuilder() {
    return FutureBuilder<Movie>(
      future: _futureMovie,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.title);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
