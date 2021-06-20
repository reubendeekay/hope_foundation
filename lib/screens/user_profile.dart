import 'package:flutter/material.dart';
import 'package:hope_foundation/constants.dart';
import 'package:hope_foundation/screens/registration_screen.dart';
import 'package:hope_foundation/widgets/userprofile_settings.dart';
import 'package:hope_foundation/widgets/userprofile_top.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserProfileTop(),
            SizedBox(
              height: 60,
            ),
            Card(
              child: Column(
                children: [
                  UserProfileSetting(
                    title: 'Need Help? Register',
                    routeName: RegistrationScreen.routeName,
                  ),
                  UserProfileSetting(
                    title: 'Donate',
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      'Become a donor',
                      style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          color: kPrimary,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  UserProfileSetting(
                    title: 'Temporary Donor',
                  ),
                  UserProfileSetting(
                    title: 'Permanent Donor',
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  UserProfileSetting(title: 'Contact us'),
                  UserProfileSetting(
                    title: '',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
