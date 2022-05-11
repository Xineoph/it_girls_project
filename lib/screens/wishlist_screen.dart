import 'package:bookshop/widgets/wishlist_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<WishListItem> books = [
  WishListItem(url: 'assets/images/bookWish1.png', height: 160.46),
  WishListItem(url: 'assets/images/bookWish2.png', height: 157.82),
  WishListItem(url: 'assets/images/bookWish3.png', height: 138.67),
  WishListItem(url: 'assets/images/bookWish4.png', height: 160.91),
  WishListItem(url: 'assets/images/bookWish5.png', height: 150.9),
  WishListItem(url: 'assets/images/bookWish6.png', height: 157.32),
  WishListItem(url: 'assets/images/bookWish7.png', height: 160.46),
  WishListItem(url: 'assets/images/bookWish8.png', height: 160.46),
  WishListItem(url: 'assets/images/bookWish9.png', height: 160.46),
  WishListItem(url: 'assets/images/bookWish10.png', height: 160.46),
  WishListItem(url: 'assets/images/bookWish11.png', height: 160.46),
  WishListItem(url: 'assets/images/bookWish1.png', height: 160.46),
  WishListItem(url: 'assets/images/bookWish2.png', height: 157.82),
  WishListItem(url: 'assets/images/bookWish3.png', height: 138.67),
  WishListItem(url: 'assets/images/bookWish4.png', height: 160.91),
  WishListItem(url: 'assets/images/bookWish11.png', height: 160.46),
  WishListItem(url: 'assets/images/bookWish1.png', height: 160.46),
  WishListItem(url: 'assets/images/bookWish2.png', height: 157.82),
  WishListItem(url: 'assets/images/bookWish3.png', height: 138.67),
  WishListItem(url: 'assets/images/bookWish4.png', height: 160.91),
  WishListItem(url: 'assets/images/bookWish10.png', height: 160.46),
];

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
        color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: _titleRow(),
      ),
      body: _VerticalScrollingList(),
    );
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
            fontFamily: 'Montserrat',
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '   ${books.length}',
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class _VerticalScrollingList extends StatefulWidget {
  @override
  State<_VerticalScrollingList> createState() => _VerticalScrollingListState();
}

class _VerticalScrollingListState extends State<_VerticalScrollingList> {
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      itemCount: books.length,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      crossAxisCount: 3,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      itemBuilder: (context, i) {
        return Card(
          child: SizedBox(
            height: books[i].height,
            child: Center(
              child: Image.asset(books[i].url),
            ),
          ),
        );
      },
    );
  }
}
