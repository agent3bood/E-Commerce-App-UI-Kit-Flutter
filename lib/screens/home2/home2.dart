import 'package:flutter/material.dart';
import 'package:e_commerceappuikit/screens/home2/category_row.dart';

import '../../widgets/my_app_bar.dart';
import '../../widgets/my_drawer.dart';

class Home2 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MyAppBar(
        scaffoldKey: _scaffoldKey,
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              CategoryRow(),
            ],
          ),
        ),
      ),
    );
  }
}
