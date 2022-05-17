import 'package:bookshop/models/author_model.dart';
import 'package:bookshop/models/books _model.dart';
import 'package:bookshop/widgets/popular_genres_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(24, 40, 24, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _WelcomeText(),
            _buildSpacer(30),
            const _PopularLists(),
            _buildSpacer(30),
            const _TopAuthorsLists(),
            _buildSpacer(30),
            const _LatestArrivalsLists(),
            _buildSpacer(30),

            const _PopularGenresLists(),
          ],
        ),
      ),
    );
  }
}

String _lastVisitDays = '16 days';

class _WelcomeText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Welcome back, Jessica!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            fontFamily: 'PlayfairDisplay',
          ),
        ),
        _buildSpacer(15),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 16.0,
              fontFamily: 'Montserrat',
              color: Colors.black,
            ),
            children: <TextSpan>[
              const TextSpan(text: 'We’re glad to see you just '),
              TextSpan(
                  text: _lastVisitDays,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const TextSpan(
                  text:
                      '  after your last visit and can’t wait to help you find your next page turner!'),
            ],
          ),
        ),
        _buildSpacer(15),
      ],
    );
  }
}

class _PopularLists extends StatelessWidget {
  const _PopularLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Popular Lists',
          //textAlign: TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'PlayfairDisplay',
          ),
        ),
        _buildSpacer(10),
        SizedBox(
          height: 128,
          child: ListView(
            children: [
              Image.asset('assets/images/popular_list.png'),
              Image.asset('assets/images/popular_list.png'),
            ],
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}

class _TopAuthorsLists extends StatelessWidget {
  const _TopAuthorsLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Top 10 Authors',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'PlayfairDisplay',
          ),
        ),
        _buildSpacer(10),
        SizedBox(
          height: 86,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _convertAuthorList(),
          ),
        )
      ],
    );
  }

  List<Container> _convertAuthorList() {

    doubleList.addAll(authorList);
    doubleList.addAll(authorList);

    return doubleList
        .map((author) => Container(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      height: 48.0,
                      width: 48.0,
                      child: Image.asset(author.image)),
                  Container(
                    alignment: Alignment.center,
                    width: 53.0,
                    height: 34.0,
                    child: Text(author.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                        )),
                  ),
                ],
              ),
            ))
        .toList();
  }
}

class _LatestArrivalsLists extends StatelessWidget {
  const _LatestArrivalsLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Latest Arrivals',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'PlayfairDisplay',
          ),
        ),
        _buildSpacer(10),
        SizedBox(
          height: 283,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _convertBookToList(),
          ),
        )
      ],
    );
  }

  List<SizedBox> _convertBookToList() {
    return booksList
        .map((book) => SizedBox(
              width: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 216,
                      child: Image.asset(book.image, fit: BoxFit.fill)),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 42.0,
                    child: Text(
                      book.name,
                      style: const TextStyle(
                        fontFamily: 'PlayfairDisplay',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    height: 17.0,
                    child: Text(
                      book.author,
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ))
        .toList();
  }
}

// class _PopularGenresLists extends StatelessWidget {
//   const _PopularGenresLists({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: const [
//         Text(
//           'TODO: Popular Genres',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//             fontFamily: 'PlayfairDisplay',
//           ),
//         ),
//       ],
//     );
//   }
// }


class _PopularGenresLists extends StatelessWidget {
  const _PopularGenresLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'TODO: Popular Genres',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'PlayfairDisplay',
          ),
        ),
      ],
    );
  }
}


Widget _buildSpacer(double space) {
  return SizedBox(
    height: space,
  );
}
