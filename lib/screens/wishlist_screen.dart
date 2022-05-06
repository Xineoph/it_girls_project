import 'package:flutter/material.dart';

List<BookInfo> _books = [
  BookInfo.title('title-0'),
  BookInfo.title('title-1'),
  BookInfo.title('title-2'),
  BookInfo.title('title-3'),
  BookInfo.title('title-4'),
  BookInfo.title('title-5'),
  BookInfo.title('title-6'),
  BookInfo.title('title-7'),
  BookInfo.title('title-8'),
  BookInfo.title('title-9'),
  BookInfo.title('title-10'),
  BookInfo.title('title-11'),
  BookInfo.title('title-12'),
  BookInfo.title('title-13')
];

class WishListScreen extends StatelessWidget {
  const WishListScreen({Key? key}) : super(key: key);

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
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                for (int i = 0; i < _books.length / 3; i++)
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        for (int j = 0;
                            j < 3 && (i * 3 + j) < _books.length;
                            j++)
                          _BookPicture(_books[i * 3 + j])
                      ])
              ]),
        ));
  }
}

class _BookPicture extends StatelessWidget {
  final BookInfo _bookInfo;

  const _BookPicture(this._bookInfo);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffeeee00),
      height: 150.0,
      width: 104.0,
      //double.infinity,
      margin: const EdgeInsets.only(bottom: 10.0),
      alignment: Alignment.center,
      child: Text(_bookInfo.title),
    );
  }
}

class BookInfo {
  String title;
  String? url;

  BookInfo(this.title, this.url);

  BookInfo.title(this.title);
}
