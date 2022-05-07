import 'package:flutter/material.dart';

import '../screens/book_screen.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Название',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.separated(
              padding: const EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              itemCount: booksList.length,
              separatorBuilder: (context, index) => const SizedBox(width: 5),
              itemBuilder: (context, index) {
                Books books = booksList[index];
                return SizedBox(
                  width: 120,
                  child: Column(
                    children: [
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 4 / 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(1),
                            child: Image.asset(
                              books.image,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        books.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(books.price),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
