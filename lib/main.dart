import 'package:flutter/material.dart';
import 'package:hope_foundation/screens/auth_screen.dart';
import 'package:hope_foundation/screens/donate_screen.dart';
import 'package:hope_foundation/screens/news_details_screen.dart';
import 'package:hope_foundation/screens/registration_screen.dart';
import 'package:hope_foundation/widgets/bottom_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          appBarTheme:
              AppBarTheme(backgroundColor: Colors.white, elevation: 0)),
      home: BottomNavBar(),
      routes: {
        NewsDetailsScreen.routeName: (ctx) => NewsDetailsScreen(),
        RegistrationScreen.routeName: (ctx) => RegistrationScreen(),
        DonateScreen.routeName: (ctx) => DonateScreen(),
        AuthScreen.routeName: (ctx) => AuthScreen(),
      },
    );
  }
}
