import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static final String route = 'profile';
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('username'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.face),
              backgroundColor: Colors.blue,
            ),
            trailing: Text("edit profile"),
          ),
          ListTile(
            title: Text("username"),
            trailing: IconButton(
              onPressed: (){},
              icon: Icon(Icons.edit),
            ),
          ),
          Divider(),
          ListTile(
            title: Text("firstname"),
            trailing: IconButton(
              onPressed: (){},
              icon: Icon(Icons.edit),
            ),
          ),
          Divider(),
          ListTile(
            title: Text("lastname"),
            trailing: IconButton(
              onPressed: (){},
              icon: Icon(Icons.edit),
            ),
          ),
        ],
      ),
    );
  }
}
