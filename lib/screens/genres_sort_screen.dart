import 'package:bookshop/helpers/colors.dart';
import 'package:bookshop/models/books%20_model.dart';
import 'package:bookshop/models/genres_model.dart';
import 'package:flutter/material.dart';

class GenresSortScreen extends StatefulWidget {
  const GenresSortScreen({Key? key}) : super(key: key);

  @override
  State<GenresSortScreen> createState() => _GenresSortScreenState();
}

class _GenresSortScreenState extends State<GenresSortScreen> {
  var selectedGenres2 = selectedGenres('Children’s Books');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Жанр'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 160, crossAxisCount: 3),
          itemCount: selectedGenres2.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Column(children: [
                Image.asset(
                  selectedGenres2[index],
                  height: 100,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  selectedGenres2[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 10, color: CustomColors.grey_2Color),
                ),
              ]),
            );
          }),
    );
  }
}

List<String> selectedGenres(String genre) {
  return booksList
      .where((book) => book.genres == genre)
      .map((e) => e.image)
      .toList();
}
