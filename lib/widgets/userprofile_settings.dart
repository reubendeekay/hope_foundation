import 'package:flutter/material.dart';

class UserProfileSetting extends StatelessWidget {
  final String title;
  final String routeName;
  UserProfileSetting({this.title, this.routeName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(routeName),
      child: ListTile(
        title: Text(title),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 18,
        ),
      ),
    );
  }
}
