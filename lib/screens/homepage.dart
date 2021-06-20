import 'package:flutter/material.dart';
import 'package:hope_foundation/constants.dart';
import 'package:hope_foundation/widgets/home_news_tile.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:hope_foundation/widgets/top_home_bar.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    height: size.height * 0.43,
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.bottomCenter,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: kPrimary,
                        borderRadius: const BorderRadius.only(
                          bottomRight: const Radius.circular(50),
                          //  bottomLeft: const Radius.circular(50),
                        )),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 40,
                          width: 50,
                          child: Image.asset('assets/images/logo.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Hope Foundation',
                          style: kHeadlineTextStyle.copyWith(letterSpacing: 3),
                        ),
                      ],
                    )),
                TopHomeBar(),
              ],
            ),
            Container(
              height: 180,
              width: size.width,
              child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 4),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: [1, 2, 3, 4, 5, 6, 7].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return HomeNewsTile();
                    },
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: size.width,
              alignment: Alignment.center,
              child: Text(
                'About us',
                style: kHeadlineTextStyle.copyWith(
                    letterSpacing: 3, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
