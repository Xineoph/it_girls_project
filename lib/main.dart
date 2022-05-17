import 'package:bookshop/screens/book_screen.dart';
import 'package:bookshop/screens/genres_sort_screen.dart';
import 'package:bookshop/screens/main_screen.dart';
import 'package:bookshop/screens/null_screen.dart';
import 'package:bookshop/screens/wishlist_screen.dart';
import 'package:bookshop/screens/genres_screen.dart';
import 'package:bookshop/widgets/popular_genres_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
      routes: {
        '/genres': (context) => const GenresList(),
        '/null': (context) => const NullScreen(),
        '/wishlist': (context) => const WishListScreen(),
        '/book_screen': (context) => const BookPage(),
        '/genres_sort': (context) => const GenresSortScreen(),

      },
      initialRoute: '/',
    );
  }
}
