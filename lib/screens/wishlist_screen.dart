import 'package:flutter/material.dart';

List<BookInfo> _books = [
  BookInfo('assets/images/bookWish1.png', 160.46),
  BookInfo('assets/images/bookWish2.png', 157.82),
  BookInfo('assets/images/bookWish3.png', 138.67),
  BookInfo('assets/images/bookWish4.png', 160.91),
  BookInfo('assets/images/bookWish5.png', 150.9),
  BookInfo('assets/images/bookWish6.png', 157.32),
  BookInfo('assets/images/bookWish7.png', 160.46),
  BookInfo('assets/images/bookWish8.png', 160.46),
  BookInfo('assets/images/bookWish9.png', 160.46),
  BookInfo('assets/images/bookWish10.png', 160.46),
  BookInfo('assets/images/bookWish11.png', 160.46),
  BookInfo('assets/images/bookWish1.png', 160.46),
  BookInfo('assets/images/bookWish2.png', 157.82),
  BookInfo('assets/images/bookWish3.png', 138.67),
  BookInfo('assets/images/bookWish4.png', 160.91),
];

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: _titleRow(),
      ),
      body: _VerticalScrollingList(),
    ));
  }

  Row _titleRow() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text(
          'Wishlist',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        Text(
          '   ${_books.length}',
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class _VerticalScrollingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (_books.isEmpty) {
      return const Text('no data');
    }
    int n = _books.length ~/ 3;

    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(15),
            child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _BooksColumn(0, n),
                  _BooksColumn(n, 2 * n),
                  _BooksColumn(2 * n, _books.length),
                ])));
  }
}

class _BooksColumn extends StatelessWidget {
  final int _start;
  final int _end;

  const _BooksColumn(this._start, this._end);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = _start; i < _end; i++)
          Container(
              padding: const EdgeInsets.only(bottom: 8),
              height: _books[i].height,
              width: _books[i].width,
              child: Image.asset(
                _books[i].url,
                fit: BoxFit.fill,
              ))
      ],
    );
  }
}

class BookInfo {
  String url;
  double height;
  double width = 104.0;

  BookInfo(this.url, this.height);
}
