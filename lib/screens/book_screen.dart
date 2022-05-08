import 'package:flutter/material.dart';

import '../widgets/horizontal_scrolling_list.dart';

class Books {
  String name;
  String description;
  String image;
  String price;
  String autor;
  String genres;
  Books({
    required this.name,
    required this.description,
    required this.image,
    this.price = '',
    this.autor = '',
    required this.genres,
  });
}

List<Books> booksList = [
  Books(
      name: 'Conversations with Friends',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_1.png',
      price: '€ 12.90',
      autor: 'Sally Rooney',
      genres: 'General Fiction'),
  Books(
      name: 'The world doesn’t require you',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_2.png',
      price: '€ 12.90',
      autor: 'Rion Amilcar Scott',
      genres: 'Crime'),
  Books(
      name: 'Promising Young Women',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_3.png',
      price: '€ 9.80',
      autor: 'Caroline O’Donoghue',
      genres: 'Thriller'),
  Books(
      name: 'Careers for Women',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_4.png',
      price: '€ 10.50',
      autor: 'Joanna Scott',
      genres: 'Romance'),
  Books(
      name: 'Little Fires Everywhere',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_5.png',
      price: '€ 12.90',
      autor: 'Celeste Ng',
      genres: 'Travel'),
  Books(
      name: 'All the Pretty Horses',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_6.png',
      price: '€ 12.90',
      autor: 'Cormac McCarthy',
      genres: 'Science Fiction'),
  Books(
      name: 'Louis & Louise',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_7.png',
      price: '€ 12.90',
      autor: 'Julie Cohen',
      genres: 'Classics'),
  Books(
      name: 'Furiously Happy',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_8.png',
      price: '€ 12.90',
      autor: 'Jenny Lawson',
      genres: 'Children’s Books'),
  Books(
      name: 'Bernadette',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_9.png',
      price: '€ 12.90',
      autor: 'Maria Semple',
      genres: 'Fantasy'),
  Books(
      name: 'Educated',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_10.png',
      price: '€ 12.90',
      autor: 'Tara Westover',
      genres: 'Classics'),
];

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
          Books books = booksList[index];
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
                    height: 160,
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

class BooksDetails extends StatelessWidget {
  final Books books;
  BooksDetails(this.books);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.topRight,
          child: FloatingActionButton(
            child: const Icon(
              Icons.close,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Center(
              child: Image.asset(
                books.image,
                width: 143,
                height: 216,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              books.name,
              style: const TextStyle(
                  fontSize: 25,
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              books.autor,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Paperback | 2nd Edition',
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  color: Color(0xFF828282)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              books.price,
              style: const TextStyle(
                  fontSize: 25,
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              books.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFFD96F6E),
              padding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 120),
              onPressed: () {},
              child: const Text(
                'ADD TO CART',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFFF3A492),
              padding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 135),
              onPressed: () {},
              child: const Text(
                'WISHLIST',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 174,
              height: 51,
              child: Text(
                'Publisher: Faber & Faber Date Published: 1 March 2018 ISBN13: 9780571333134',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    color: Color(0xFF828282)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Genres:',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4F4F4F)),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Ink(
                      padding: const EdgeInsets.all(7),
                      width: 130,
                      height: 30,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Color(0xFFF2D05C), Color(0xFFF3A492)]),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Contemporary',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Ink(
                      padding: const EdgeInsets.all(7),
                      width: 130,
                      height: 30,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Color(0xFF53889D), Color(0xFFBBD1D9)]),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        books.genres,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Share this book:',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4F4F4F)),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              // width: 350,
              // height: 50,
              child: Row(
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    backgroundColor: const Color(0xFF53889D),
                    heroTag: null,
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/icon_facebook.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: const Color(0xFF53889D),
                    heroTag: null,
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/icon_instagram.png',
                      color: Colors.white,
                      width: 30,
                      height: 30,
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: const Color(0xFF53889D),
                    heroTag: null,
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/icon_twitter.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: const Color(0xFF53889D),
                    heroTag: null,
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/icon_mail.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: const Color(0xFF53889D),
                    heroTag: null,
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/icon.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 150),
              child: Text(
                'Similar Publications:',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'PlayfairDisplay',
                    fontWeight: FontWeight.bold),
              ),
            ),
            const HorizontalList(),
          ],
        )),
      ),
    );
  }
}
