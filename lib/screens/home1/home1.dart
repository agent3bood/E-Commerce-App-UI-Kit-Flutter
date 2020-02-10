import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_app_bar.dart';
import '../../widgets/my_drawer.dart';
import './teaser_row.dart';

class Home1 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MyAppBar(scaffoldKey: _scaffoldKey),
      drawer: MyDrawer(),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TeaserRow(
                name: 'New Arrival',
              ),
              TeaserRow(
                name: 'Best Selling',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
