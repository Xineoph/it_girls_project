import 'package:bookshop/models/books%20_model.dart';
import 'package:bookshop/widgets/book_details.dart';
import 'package:flutter/material.dart';

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
        SizedBox(
          height: 250,
          child: ListView.separated(
              padding: const EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              itemCount: booksList.length,
              separatorBuilder: (context, index) => const SizedBox(width: 5),
              itemBuilder: (context, index) {
                Books _books = booksList[index];
                return SizedBox(
                  width: 120,
                  child: InkWell(
                    onTap: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BooksDetails(_books)));
                    }),
                    child: Column(
                      children: [
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 4 / 5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(1),
                              child: Image.asset(
                                _books.image,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          _books.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(_books.price),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
