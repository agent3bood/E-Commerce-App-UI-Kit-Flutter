import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Home 1'),
            onTap: () {
              Navigator.of(context).pushNamed('/home1');
            },
          ),
          ListTile(
            title: Text('Home 2'),
            onTap: () {
              Navigator.of(context).pushNamed('/home2');
            },
          ),
        ],
      ),
    );
  }
}
