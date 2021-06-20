import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hope_foundation/constants.dart';
import 'package:hope_foundation/screens/donate_screen.dart';
import 'package:hope_foundation/screens/homepage.dart';
import 'package:hope_foundation/screens/news_feed_screen.dart';
import 'package:hope_foundation/screens/user_profile.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedPage = 0;
  List _pages = [
    Homepage(),
    NewsFeedScreen(),
    DonateScreen(),
    UserProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedPage],
        bottomNavigationBar: CurvedNavigationBar(
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 400),
          height: 45,
          backgroundColor: Colors.transparent,
          color: kPrimary,
          buttonBackgroundColor: kPrimary,
          items: const <Widget>[
            Icon(
              Icons.home,
              size: 25,
              color: Colors.white,
            ),
            Icon(
              Icons.library_books_rounded,
              size: 25,
              color: Colors.white,
            ),
            Icon(
              Icons.card_giftcard_outlined,
              size: 25,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              size: 25,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedPage = index;
            });
          },
        ));
  }
}
