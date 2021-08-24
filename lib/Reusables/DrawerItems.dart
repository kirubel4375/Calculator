import 'package:calculator/Screens/HistoryPage.dart';
import 'package:calculator/Screens/ProfilePage.dart';
import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("username"),
          accountEmail: Text("email@gmail.com"),
          currentAccountPicture: CircleAvatar(),
        ),
        ListTile(
          title: Text('Edit Profile'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, ProfilePage.route);
          },
        ),
        ListTile(
          title: Text('history'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, HistoryPage.route);
          },
        ),
      ],
    );
  }
}
