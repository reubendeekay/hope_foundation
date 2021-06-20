import 'package:flutter/material.dart';
import 'package:hope_foundation/screens/news_details_screen.dart';

class NewsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(NewsDetailsScreen.routeName);
      },
      child: Container(
        height: 150,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/home1.jpg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: size.width * 0.8,
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 5,
                  child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text('Wanjoki- The Struggle of an innocent woman',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 5,
                child: Card(
                  color: Colors.transparent,
                  child: Text('6:09',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ))
          ],
        ),
      ),
    );
  }
}
