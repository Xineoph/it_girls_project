import 'package:bookshop/models/books%20_model.dart';
import 'package:bookshop/widgets/book_details.dart';
import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BookGridView(booksList);
  }
}

class BookGridView extends StatelessWidget {
  final List<Books> _books;

  const BookGridView(this._books, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BookGridView(booksList);
  }
}

class BookGridView extends StatelessWidget {
  final List<Books> _books;

  const BookGridView(this._books, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: _books.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          Books books = _books[index];
          return InkWell(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BooksDetails(books)));
            }),
            child: Card(
              elevation: 30,
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    books.image,
                    height: 149,
                    fit: BoxFit.fitHeight,
                  ),
                  Text(
                    books.price,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          );
        });
  }
}
