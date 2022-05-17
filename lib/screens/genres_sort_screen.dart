import 'package:bookshop/models/books%20_model.dart';
import 'package:bookshop/screens/book_screen.dart';
import 'package:flutter/material.dart';

class GenresSortScreen extends StatefulWidget {
  const GenresSortScreen({Key? key}) : super(key: key);

  @override
  State<GenresSortScreen> createState() => _GenresSortScreenState();
}

class _GenresSortScreenState extends State<GenresSortScreen> {
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    String genre = arguments['genre'];
    List<Books> booksByGenres = findBookByGenre(genre);
    return Scaffold(
      appBar: AppBar(
        title: Text(genre),
      ),
      body: BookGridView(booksByGenres),
    );
  }
}
