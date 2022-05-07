import 'package:flutter/material.dart';

import '../widgets/horizontal_scrolling_list.dart';

class Books {
  String name;
  String description;
  String image;
  String price;
  String autor;
  Books({
    required this.name,
    required this.description,
    required this.image,
    this.price = '',
    this.autor = '',
  });
}

List<Books> booksList = [
  Books(
    name: 'Conversations with Friends',
    description: 'description',
    image: 'assets/images/book_1.png',
    price: '€ 12.90',
    autor: 'Sally Rooney',
  ),
  Books(
      name: 'The world doesn’t require you',
      description: 'description',
      image: 'assets/images/book_2.png',
      price: '€ 12.90',
      autor: 'Rion Amilcar Scott'),
  Books(
      name: 'Promising Young Women',
      description: 'description',
      image: 'assets/images/book_3.png',
      price: '€ 9.80',
      autor: 'Caroline O’Donoghue'),
  Books(
      name: 'Careers for Women',
      description: 'description',
      image: 'assets/images/book_4.png',
      price: '€ 10.50',
      autor: 'Joanna Scott'),
  Books(
      name: 'Little Fires Everywhere',
      description: 'description',
      image: 'assets/images/book_5.png',
      price: '€ 12.90',
      autor: 'Celeste Ng'),
  Books(
      name: 'All the Pretty Horses',
      description: 'description',
      image: 'assets/images/book_6.png',
      price: '€ 12.90',
      autor: 'Cormac McCarthy'),
  Books(
      name: 'Louis & Louise',
      description: 'description',
      image: 'assets/images/book_7.png',
      price: '€ 12.90',
      autor: 'Julie Cohen'),
  Books(
      name: 'Furiously Happy',
      description: 'description',
      image: 'assets/images/book_8.png',
      price: '€ 12.90',
      autor: 'Jenny Lawson'),
  Books(
      name: 'Bernadette',
      description: 'description',
      image: 'assets/images/book_9.png',
      price: '€ 12.90',
      autor: 'Maria Semple'),
  Books(
      name: 'Educated',
      description: 'description',
      image: 'assets/images/book_10.png',
      price: '€ 12.90',
      autor: 'Tara Westover'),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const HorizontalList(),
      ),
    );
  }
}
