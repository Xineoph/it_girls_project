import 'package:bookshop/models/books%20_model.dart';
import 'package:bookshop/widgets/horizontal_scrolling_list.dart';
import 'package:flutter/material.dart';

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