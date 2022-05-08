class Books {
  String name;
  String description;
  String image;
  String price;
  String autor;
  String genres;
  Books({
    required this.name,
    required this.description,
    required this.image,
    this.price = '',
    this.autor = '',
    required this.genres,
  });
}

List<Books> booksList = [
  Books(
      name: 'Conversations with Friends',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_1.png',
      price: '€ 12.90',
      autor: 'Sally Rooney',
      genres: 'General Fiction'),
  Books(
      name: 'The world doesn’t require you',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_2.png',
      price: '€ 12.90',
      autor: 'Rion Amilcar Scott',
      genres: 'Crime'),
  Books(
      name: 'Promising Young Women',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_3.png',
      price: '€ 9.80',
      autor: 'Caroline O’Donoghue',
      genres: 'Thriller'),
  Books(
      name: 'Careers for Women',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_4.png',
      price: '€ 10.50',
      autor: 'Joanna Scott',
      genres: 'Romance'),
  Books(
      name: 'Little Fires Everywhere',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_5.png',
      price: '€ 12.90',
      autor: 'Celeste Ng',
      genres: 'Travel'),
  Books(
      name: 'All the Pretty Horses',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_6.png',
      price: '€ 12.90',
      autor: 'Cormac McCarthy',
      genres: 'Science Fiction'),
  Books(
      name: 'Louis & Louise',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_7.png',
      price: '€ 12.90',
      autor: 'Julie Cohen',
      genres: 'Classics'),
  Books(
      name: 'Furiously Happy',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_8.png',
      price: '€ 12.90',
      autor: 'Jenny Lawson',
      genres: 'Children’s Books'),
  Books(
      name: 'Bernadette',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_9.png',
      price: '€ 12.90',
      autor: 'Maria Semple',
      genres: 'Fantasy'),
  Books(
      name: 'Educated',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/book_10.png',
      price: '€ 12.90',
      autor: 'Tara Westover',
      genres: 'Classics'),
];
