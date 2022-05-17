import 'package:bookshop/helpers/colors.dart';
import 'package:bookshop/screens/book_screen.dart';
import 'package:bookshop/screens/wishlist_screen.dart';
import 'package:bookshop/screens/home_screen.dart';
import 'package:flutter/material.dart';


import 'package:bookshop/screens/book_screen.dart';
import 'package:bookshop/screens/user_profile_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),

    const BookPage(),

    const WishListInProfile(),

    const MyApp(),
  ];
  final List<Widget> screensName = [
    const Text('Home Page'),
    const Text('Book Page'),
    const Text('Wishlist'),
    const Text('Profile'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: screensName[selectedIndex],
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: MySearchDelegate(),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: CustomColors.blueColor,
          unselectedItemColor: CustomColors.babyColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (index) => setState(() => selectedIndex = index),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined), label: 'browse'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: 'wishlist'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'profile')
          ],
        ));
  }
}

class MySearchDelegate extends SearchDelegate {
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(Icons.arrow_back));
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const BookPage();
  }
}
