import 'package:flutter/material.dart';
import 'package:hope_foundation/constants.dart';

class TopHomeBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.35,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomRight: const Radius.circular(50),
          // bottomLeft: const Radius.circular(50),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              'assets/images/home1.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black.withOpacity(0.65),
              height: size.height * 0.35,
              width: double.infinity,
            ),
            Container(
              width: 250,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Text(
                'Transforming Teens Lives',
                textAlign: TextAlign.center,
                style: kHeadlineTextStyle.copyWith(fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
