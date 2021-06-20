import 'package:flutter/material.dart';
import 'package:hope_foundation/constants.dart';
import 'package:hope_foundation/widgets/news_tile.dart';

class NewsDetailsScreen extends StatefulWidget {
  static const routeName = '/news-details-screen';
  @override
  _NewsDetailsScreenState createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
            elevation: 0,
            expandedHeight: size.height * 0.5,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Story Headline",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      backgroundColor: Colors.white.withOpacity(0.08))),
              background: Container(
                height: size.height * 0.5,
                child: Image.asset(
                  'assets/images/home1.jpg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            )),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, i) => Stack(
                    children: [
                      Container(
                        width: size.width,
                        height: size.height * 1.2,
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        color: kPrimary,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 150,
                          height: 150,
                          color: kPrimary,
                        ),
                      ),
                      Container(
                          height: size.height * 1.2,
                          width: size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: IgnorePointer(
                                      child: Container(
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                'assets/images/profile.jpg',
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Reuben',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16),
                                                ),
                                                Text('6:02')
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ))),
                            ],
                          )),
                    ],
                  ),
              childCount: 1),
        )
      ],
    ));
  }
}
