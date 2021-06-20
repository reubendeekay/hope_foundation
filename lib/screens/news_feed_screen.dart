import 'package:flutter/material.dart';
import 'package:hope_foundation/constants.dart';
import 'package:hope_foundation/widgets/news_tile.dart';

class NewsFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset('assets/images/logo.png'),
            ),
            SizedBox(
              width: 50,
            ),
            Text(
              'News',
              style: kHeadlineTextStyle.copyWith(color: kPrimary, fontSize: 24),
            ),
            Text(
              ' Feed',
              style: kHeadlineTextStyle.copyWith(
                  color: Colors.black, fontSize: 24),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          NewsTile(),
          NewsTile(),
          NewsTile(),
          NewsTile(),
          NewsTile(),
          NewsTile(),
          NewsTile(),
          NewsTile(),
          NewsTile(),
        ],
      ),
    );
  }
}
