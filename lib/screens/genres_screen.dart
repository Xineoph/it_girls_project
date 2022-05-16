import 'package:flutter/material.dart';
import 'package:bookshop/models/books _model.dart';
import 'package:bookshop/screens/book_screen.dart';

class GenresScreen extends StatelessWidget {
  const GenresScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute
        .of(context)
        ?.settings
        .arguments ?? <String, dynamic>{}) as Map;
    String genre = arguments['genre'];
    List<Books> booksByGenres = findBookByGenre(genre);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: BookGridView(booksByGenres),
        ),
      ),
    );
  }
}
