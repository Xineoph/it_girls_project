import 'package:bookshop/helpers/colors.dart';
import 'package:bookshop/models/genres_model.dart';

import 'package:flutter/material.dart';

class GenresList extends StatelessWidget {
  const GenresList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildText(),
        _buildGridView(),
      ],
    );
  }

  Widget _buildText() {
    return const Padding(
      padding: EdgeInsets.only(right: 200),
      child: Text(
        'Popular Genres',
        style: TextStyle(
            fontFamily: 'PlayfairDisplay',
            fontWeight: FontWeight.w700,
            fontSize: 20),
      ),
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(5),
        itemCount: genresList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 120, crossAxisCount: 4),
        itemBuilder: (context, index) {
          Genres genres = genresList[index];
          return InkWell(
            onTap: (() {
              Navigator.of(context).pushNamed(
                '/genres_sort',
                arguments: {'genre': genres.name},
              );
            }),
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(22),
                    child: Image.asset(
                      genres.image,
                      height: 32,
                      width: 32,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  genres.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: CustomColors.grey_2Color,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ],
            ),
          );
        });
  }
}
