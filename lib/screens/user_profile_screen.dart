import 'package:bookshop/helpers/colors.dart';
import 'package:bookshop/screens/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'wishlist_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile",
      debugShowCheckedModeBanner: false,
      home: UserProfilePage(),
    );
  }
}

class UserProfilePage extends StatelessWidget {
  final String _fullName = "Jessica Mapleton";
  final String _from = "Cape Town, South Africa";

  final String _followers = "945K";
  final String following = "2,1K";
  final String _bio = "Favorite Genres";
  final String _bio2 = "Purchased Books";

  Widget _buildProfileImage() {
    return Center(
      child: Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Jessica.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(80.0),
        ),
      ),
    );
  }

  Widget _buildFullName() {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: 'Playfair Display',
      color: Colors.black,
      fontSize: 31.25,
      fontWeight: FontWeight.w700,
    );

    return Text(
      _fullName,
      style: _nameTextStyle,
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        _from,
        style: TextStyle(
          fontFamily: 'Montserrat',
          color: Color(0xFF828282),
          fontSize: 10.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String count) {
    TextStyle _statLabelTextStyle = TextStyle(
      fontFamily: 'Montserrat',
      color: Color(0xFF4F4F4F),
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
    );

    TextStyle _statCountTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: _statLabelTextStyle,
        ),
        Text(
          count,
          style: _statCountTextStyle,
        ),
      ],
    );
  }

  Widget _buildStatContainer() {
    return Container(
      height: 60.0,
      margin: EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildStatItem("Following", following),
          _buildStatItem("Followers", _followers),
        ],
      ),
    );
  }

  Widget _buildBio(BuildContext context) {
    TextStyle bioTextStyle = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700, //try changing weight to w500 if not thin
      fontStyle: FontStyle.normal,
      color: Color(0xFF333333),
      fontSize: 16.0,
    );

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(8.0),
      child: Text(
        _bio,
        textAlign: TextAlign.center,
        style: bioTextStyle,
      ),
    );
  }

  Widget _buildButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 24.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                    colors: [Color(0xFF53889D), Color(0xFFBBD1D9)])),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.transparent),
              child: Text(
                'African',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0, width: 10.0),
          Container(
            height: 24.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                    colors: [Color(0xFFF3A492), Color(0xFFD96F6E)])),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.transparent),
              child: Text(
                'Classics',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0, width: 10.0),
          Container(
            height: 24.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                    colors: [Color(0xFFF2D05C), Color(0xFFF3A492)])),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.transparent),
              child: Text(
                'Contemporary',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtons2() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 24.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                    colors: [Color(0xFFF2D05C), Color(0xFFF3A492)])),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.transparent),
              child: Text(
                'Feminist Literature',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0, width: 10.0),
          Container(
            height: 24.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                    colors: [Color(0xFFBBD1D9), Color(0xFFF2D05C)])),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.transparent),
              child: Text(
                'Memoirs',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtons3() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 24.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                    colors: [Color(0xFFD96F6E), Color(0xFFF2D05C)])),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.transparent),
              child: Text(
                'Psychological Thrillers',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0, width: 10.0),
          Container(
            height: 24.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                    colors: [Color(0xFF53889D), Color(0xFFBBD1D9)])),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.transparent),
              child: Text(
                'True Crime',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBio2(BuildContext context) {
    TextStyle bioTextStyle = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700, //try changing weight to w500 if not thin
      fontStyle: FontStyle.normal,
      color: Color(0xFF333333),
      fontSize: 16.0,
    );
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(8.0),
      child: Text(
        _bio2,
        textAlign: TextAlign.center,
        style: bioTextStyle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: screenSize.height / 6.4),
                  _buildProfileImage(),
                  _buildFullName(),
                  _buildStatus(context),
                  _buildStatContainer(),
                  _buildBio(context),
                  SizedBox(height: 10.0),
                  _buildButtons(),
                  _buildButtons2(),
                  _buildButtons3(),
                  SizedBox(height: 20.0),
                  _buildBio2(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
