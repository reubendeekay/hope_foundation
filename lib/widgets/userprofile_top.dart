import 'package:flutter/material.dart';
import 'package:hope_foundation/constants.dart';
import 'package:hope_foundation/screens/auth_screen.dart';

class UserProfileTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: size.height * 0.45,
          width: size.width,
          child: Image.asset(
            'assets/images/pattern.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        Positioned(
          bottom: -55,
          left: size.width * 0.1,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 110,
                width: 300,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 75,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Reuben',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text('Category: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Donor',
                                  style: TextStyle(
                                      color: kPrimary,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 30,
                            width: 100,
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                          content: Text(
                                              'Confirm you want to log out'),
                                          title: Text(
                                            'Log out',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.of(context)
                                                      .popAndPushNamed(
                                                          AuthScreen.routeName),
                                              child: Text(
                                                'Yes',
                                                style: TextStyle(
                                                    color: kPrimary,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            TextButton(
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                                child: Text(
                                                  'No',
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ))
                                          ],
                                        ));
                              },
                              child: Text('Logout',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -50,
                left: 15,
                child: Container(
                  height: 130,
                  width: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
