class Books {
  String name;
  String description;
  String image;
  String price;
  String author;
  String genres;
  Books({
    required this.name,
    required this.description,
    required this.image,
    this.price = '',
    this.author = '',
    required this.genres,
  });
}

List<Books> booksList = [
  Books(
      name: 'Conversations with Friends',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/bookWish11.png',
      price: '€ 12.90',
      author: 'Sally Rooney',
      genres: 'General Fiction'),
  Books(
      name: 'The world doesn’t require you',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/bookWish1.png',
      price: '€ 12.90',
      author: 'Rion Amilcar Scott',
      genres: 'Crime'),
  Books(
      name: 'Promising Young Women',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/bookWish10.png',
      price: '€ 9.80',
      author: 'Caroline O’Donoghue',
      genres: 'Thriller'),
  Books(
      name: 'Careers for Women',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/bookWish9.png',
      price: '€ 10.50',
      author: 'Joanna Scott',
      genres: 'Romance'),
  Books(
      name: 'Little Fires Everywhere',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/bookWish7.png',
      price: '€ 12.90',
      author: 'Celeste Ng',
      genres: 'Travel'),
  Books(
      name: 'All the Pretty Horses',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/bookWish8.png',
      price: '€ 12.90',
      author: 'Cormac McCarthy',
      genres: 'Science Fiction'),
  Books(
      name: 'Louis & Louise',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/bookWish5.png',
      price: '€ 12.90',
      author: 'Julie Cohen',
      genres: 'Classics'),
  Books(
      name: 'Furiously Happy',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/bookWish2.png',
      price: '€ 12.90',
      author: 'Jenny Lawson',
      genres: 'Children’s Books'),
  Books(
      name: 'Bernadette',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/bookWish4.png',
      price: '€ 12.90',
      author: 'Maria Semple',
      genres: 'Fantasy'),
  Books(
      name: 'Educated',
      description:
          'A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that’s enticing... ',
      image: 'assets/images/bookWish6.png',
      price: '€ 12.90',
      author: 'Tara Westover',
      genres: 'Classics'),
];


List<Books> findBookByGenre (String genre) {
  return booksList
      .where((book) => book.genres == genre)
      .toList();
}
