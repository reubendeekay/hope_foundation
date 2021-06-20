import 'package:flutter/material.dart';
import 'package:hope_foundation/constants.dart';

class DonateScreen extends StatelessWidget {
  static const routeName = '/donate-screen';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
            ' Donate',
            style:
                kHeadlineTextStyle.copyWith(color: Colors.black, fontSize: 24),
          ),
        ],
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Choose the mode of payment for your donation',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Amount'),
                    ),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.green,
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/mpesa.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.red,
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/airtel.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.green,
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/cc.jpeg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Or',
              style: kHeadlineTextStyle.copyWith(color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                  color: kPrimary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      bottomLeft: Radius.circular(60))),
              child: Text(
                'Drop off your donations at Njogu Building-Nyeri town near Diana Center',
                style: kHeadlineTextStyle.copyWith(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 450,
              width: size.width,
              child: Image.asset(
                'assets/images/donate.jpeg',
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
