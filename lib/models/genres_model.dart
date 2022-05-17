class Genres {
  String name;
  String image;

  Genres({
    required this.name,
    this.image = '',
  });
}

List<Genres> genresList = [
  Genres(
    name: 'General Fiction',
    image: 'assets/images/gen_general_fiction.png',
  ),
  Genres(
    name: 'Crime',
    image: 'assets/images/gen_crime.png',
  ),
  Genres(
    name: 'Thriller',
    image: 'assets/images/gen_triller.png',
  ),
  Genres(
    name: 'Romance',
    image: 'assets/images/gen_romance.png',
  ),
  Genres(
    name: 'Travel',
    image: 'assets/images/gen_travel.png',
  ),
  Genres(
    name: 'Sports',
    image: 'assets/images/gen_sports.png',
  ),
  Genres(
    name: 'Science Fiction',
    image: 'assets/images/gen_science.png',
  ),
  Genres(
    name: 'Fantasy',
    image: 'assets/images/gen_fantasy.png',
  ),
  Genres(
    name: 'Young Adult',
    image: 'assets/images/gen_young_adult.png',
  ),
  Genres(
    name: 'Children’s Books',
    image: 'assets/images/gen_children.png',
  ),
  Genres(
    name: 'Classics',
    image: 'assets/images/gen_classics.png',
  ),
  Genres(
    name: 'Nature',
    image: 'assets/images/gen_nature.png',
  ),
];
/*
Set<TextButton> findUniqueGenre() {
  return genresList
      .map((e) => e.name)
  .map((e) => TextButton(onPressed: onPressed, child: child))
      .toSet();
}
*/