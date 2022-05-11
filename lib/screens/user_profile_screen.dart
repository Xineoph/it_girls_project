import 'package:bookshop/screens/wishlist_screen.dart';
import 'package:flutter/material.dart';

class WishListInProfile extends StatelessWidget {
  const WishListInProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: const <Widget>[
          RowTitle(),
          WishListComponent(),
          InkWellWishScreen(),
        ],
      ),
    );
  }
}

class RowTitle extends StatefulWidget {
  const RowTitle({Key? key}) : super(key: key);

  @override
  State<RowTitle> createState() => _RowTitleState();
}

class _RowTitleState extends State<RowTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              'Wishlist',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Montserrat',
                color: Colors.black,
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
        ));
  }
}

class WishListComponent extends StatefulWidget {
  const WishListComponent({Key? key}) : super(key: key);

  @override
  State<WishListComponent> createState() => _WishListComponentState();
}

class _WishListComponentState extends State<WishListComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildColumnList(0, 2),
        _buildColumnList(2, 4),
        _buildColumnList(4, 6)
      ],
    );
  }

  Column _buildColumnList(int start, int end) => Column(
      children: books
          .sublist(start, end)
          .map((item) => Container(
                padding: const EdgeInsets.all(4),
                child: Image.asset(
                  item.url,
                  height: item.height,
                  width: item.width,
                ),
              ))
          .toList());
}

class InkWellWishScreen extends StatelessWidget {
  const InkWellWishScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
        child: Container(
          padding: const EdgeInsets.only(
            bottom: 1,
          ),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Color(0xffd96f6e),
            width: 2.0,
          ))),
          child: const Text(
            'View all WishList Books  >',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              fontFamily: 'Montserrat',
              color: Color(0xffd96f6e),
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const WishListScreen()));
      },
    );
  }
}
