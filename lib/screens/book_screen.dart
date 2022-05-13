import 'package:bookshop/models/books%20_model.dart';
import 'package:bookshop/widgets/book_details.dart';
import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: booksList.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          Books _books = booksList[index];
          return InkWell(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BooksDetails(_books)));
            }),
            child: Card(
              elevation: 30,
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    _books.image,
                    height: 155,
                    fit: BoxFit.fitHeight,
                  ),
                  Text(
                    _books.price,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          );
        });
  }
}
