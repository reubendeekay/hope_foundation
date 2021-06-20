import 'package:flutter/material.dart';
import 'package:hope_foundation/screens/news_details_screen.dart';

class HomeNewsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: 150,
        width: size.width,
        margin: EdgeInsets.symmetric(vertical: 5),
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
              bottom: 10,
              child: Container(
                width: 250,
                margin: EdgeInsets.symmetric(
                  horizontal: 2,
                ),
                child: Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  elevation: 5,
                  child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Text('Wanjoki- The Struggle of an innocent woman',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            )
          ],
        ));
  }
}
