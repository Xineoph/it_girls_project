import 'package:bookshop/helpers/colors.dart';
import 'package:bookshop/screens/wishlist_screen.dart';
import 'package:flutter/material.dart';

Map<String, LinearGradient> _genresMap = {
  'African': CustomColors.gradientBlueBaby,
  'Classics': CustomColors.gradientPinkBlush,
  'Travel': CustomColors.gradientYellowPink,
  'Science Fiction': CustomColors.gradientYellowPink,
  'Romance': CustomColors.gradientBabyYellow,
  'Fantasy': CustomColors.gradientBlushYellow,
  'Children’s Books': CustomColors.gradientBlueBaby,
};

class WishListInProfile extends StatelessWidget {
  const WishListInProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(24, 40, 24, 40),
        child: Column(
          children: <Widget>[
            _titleGenresTags(),
            _buttonGenresTags(context),
            _titleWishListComponent(),
            const WishListComponent(),
            const InkWellWishScreen(),
          ],
        ),
      ),
    );
  }
}

Widget _titleGenresTags() {
  return Container(
    padding: const EdgeInsets.fromLTRB(5, 40, 20, 15),
    child: const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Favorite Genres',
        style: TextStyle(
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: CustomColors.grey_2Color),
      ),
    ),
  );
}

Widget _buttonGenresTags(context) {
  return Wrap(
    children: _childrenButtonGenresTags(context),
  );
}

List<Widget> _childrenButtonGenresTags(context) {
  List<TextButton> _list = [];
  for (var entry in _genresMap.entries) {
    _list.add(_generalTextButton(context, entry.key, entry.value));
  }
  return _list;
}

TextButton _generalTextButton(context, String genreValue, LinearGradient gradient) {
  return TextButton(
    onPressed: () {
      Navigator.of(context).pushNamed(
        '/genresScreen',
        arguments: {'genre': genreValue},
      );
    },
    child: Ink(
      padding: const EdgeInsets.all(7),
      width: genreValue.length * 9,
      height: 30,
      decoration: BoxDecoration(
          gradient: gradient, borderRadius: BorderRadius.circular(10)),
      child: Text(
        genreValue,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: CustomColors.whiteColor),
      ),
    ),
  );
}

Widget _titleWishListComponent() {
  return Container(
      padding: const EdgeInsets.fromLTRB(8, 40, 20, 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            'Wishlist',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: CustomColors.grey_2Color),
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
            color: CustomColors.blushColor,
            width: 2.0,
          ))),
          child: const Text(
            'View all WishList Books  >',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              fontFamily: 'Montserrat',
              color: CustomColors.blushColor,
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
