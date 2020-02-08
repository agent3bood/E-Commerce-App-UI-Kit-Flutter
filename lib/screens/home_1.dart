import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './my_app_bar.dart';

class Home1 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MyAppBar(scaffoldKey: _scaffoldKey),
      drawer: Drawer(),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
