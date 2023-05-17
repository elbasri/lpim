import 'package:fh2_mobile/screens/login-screens.dart';
import 'package:fh2_mobile/screens/posts-screens.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Abdennacer"),
          ),
          ListTile(
            title: Text("Posts"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PostsScreen()));
            },
          ),
          ListTile(
            title: Text("Login"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          )
        ],
      ),
    );
  }
}