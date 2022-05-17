import 'package:bookshop/helpers/colors.dart';
import 'package:bookshop/models/books%20_model.dart';
import 'package:bookshop/widgets/horizontal_scrolling_list.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class BooksDetails extends StatelessWidget {
  final Books _books;

  const BooksDetails(this._books, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close))
      ]),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildBookImage(),
              _buildSpacer(),
              _buildBookName(),
              _buildSpacer(),
              _buildBookAutor(),
              _buildSpacer(),
              _buildBookInfo(),
              _buildSpacer(),
              _buildBookPrice(),
              _buildSpacer(),
              _buildBookDescription(),
              _buildSpacer(),
              _buildButtonCart(),
              _buildSpacer(),
              _buildButtoWishList(context),
              _buildSpacer(),
              _buildPublisher(),
              _buildSpacer(),
              _buildTextGenres(),
              _buildButtonGenres(context),
              _buildTextShare(),
              _buildRowShare(),
              _buildTextPublications(),
              const HorizontalList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSpacer() {
    return const SizedBox(
      height: 10,
    );
  }

  Widget _buildBookImage() {
    return Center(
      child: Image.asset(
        _books.image,
        width: 143,
        height: 216,
      ),
    );
  }

  Widget _buildBookName() {
    return Text(
      _books.name,
      style: const TextStyle(
          fontSize: 25,
          fontFamily: 'PlayfairDisplay',
          fontWeight: FontWeight.bold),
    );
  }

  Widget _buildBookAutor() {
    return Text(

      _books.author,

      style: const TextStyle(
        fontSize: 16,
        fontFamily: 'Montserrat',
      ),
    );
  }

  Widget _buildBookInfo() {
    return const Text(
      'Paperback | 2nd Edition',
      style: TextStyle(
        fontSize: 12,
        fontFamily: 'Montserrat',
        color: CustomColors.grey_3Color,
      ),
    );
  }

  Widget _buildBookPrice() {
    return Text(
      _books.price,
      style: const TextStyle(
          fontSize: 25,
          fontFamily: 'PlayfairDisplay',
          fontWeight: FontWeight.bold),
    );
  }

  Widget _buildBookDescription() {
    return Text(
      _books.description,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 16,
        fontFamily: 'Montserrat',
      ),
    );
  }

  Widget _buildButtonCart() {
    return TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(CustomColors.blushColor),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          minimumSize: MaterialStateProperty.all(const Size(296.0, 40.0))),
      onPressed: () {},
      child: const Text(
        'ADD TO CART',
        style: TextStyle(
            fontSize: 16,
            fontFamily: 'Montserrat',
            color: CustomColors.whiteColor,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildButtoWishList(context) {
    return TextButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(CustomColors.softPinkColor),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          minimumSize: MaterialStateProperty.all(const Size(296.0, 40.0))),
      onPressed: () {
        Navigator.of(context).pushNamed('/wishlist');
      },
      child: const Text(
        'WISHLIST',
        style: TextStyle(
            fontSize: 16,
            fontFamily: 'Montserrat',
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildPublisher() {
    return const SizedBox(
      width: 174,
      height: 51,
      child: Text(
        'Publisher: Faber & Faber Date Published: 1 March 2018 ISBN13: 9780571333134',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 12,
            fontFamily: 'Montserrat',
            color: CustomColors.grey_3Color),
      ),
    );
  }

  Widget _buildTextGenres() {
    return const Text(
      'Genres:',
      style: TextStyle(
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          color: CustomColors.grey_2Color),
    );
  }

  Widget _buildButtonGenres(context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/null');
            },
            child: Ink(
              padding: const EdgeInsets.all(7),
              width: 130,
              height: 30,
              decoration: BoxDecoration(
                  gradient: CustomColors.gradientYellowPink,
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                'Contemporary',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: CustomColors.whiteColor),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/null');
            },
            child: Ink(
              padding: const EdgeInsets.all(7),
              width: 130,
              height: 30,
              decoration: BoxDecoration(
                  gradient: CustomColors.gradientBlueBaby,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                _books.genres,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: CustomColors.whiteColor),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextShare() {
    return const Text(
      'Share this book:',
      style: TextStyle(
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          color: CustomColors.grey_2Color),
    );
  }

  Widget _buildRowShare() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            backgroundColor: CustomColors.blueColor,
            heroTag: null,
            onPressed: () {
              Share.share(_books.name);
            },
            child: Image.asset(
              'assets/images/icon_facebook.png',
              width: 30,
              height: 30,
            ),
          ),
          FloatingActionButton(
            backgroundColor: CustomColors.blueColor,
            heroTag: null,
            onPressed: () {
              Share.share(_books.name);
            },
            child: Image.asset(
              'assets/images/icon_instagram.png',
              color: Colors.white,
              width: 30,
              height: 30,
            ),
          ),
          FloatingActionButton(
            backgroundColor: CustomColors.blueColor,
            heroTag: null,
            onPressed: () {
              Share.share(_books.name);
            },
            child: Image.asset(
              'assets/images/icon_twitter.png',
              width: 30,
              height: 30,
            ),
          ),
          FloatingActionButton(
            backgroundColor: CustomColors.blueColor,
            heroTag: null,
            onPressed: () {
              Share.share(_books.name);
            },
            child: Image.asset(
              'assets/images/icon_mail.png',
              width: 30,
              height: 30,
            ),
          ),
          FloatingActionButton(
            backgroundColor: CustomColors.blueColor,
            heroTag: null,
            onPressed: () {
              Share.share(_books.name);
            },
            child: Image.asset(
              'assets/images/icon.png',
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextPublications() {
    return const Padding(
      padding: EdgeInsets.only(right: 150),
      child: Text(
        'Similar Publications:',
        style: TextStyle(
            fontSize: 20,
            fontFamily: 'PlayfairDisplay',
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
