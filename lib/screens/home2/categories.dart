import 'package:flutter/material.dart';
import 'package:e_commerceappuikit/screens/home2/basic_app_bar.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';

import './teaser.dart';

class Categories extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: BasicAppBar(),
      body: Container(
        padding: EdgeInsets.all(16),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(bottom: 11),
                child: Text(
                  'Woman',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.custom(
                gridDelegate: MySliver(),
                childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Teaser();
                  },
                  childCount: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MySliver extends SliverGridDelegate {
  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    double w = 150;
    double h = 255;
    return SliverGridRegularTileLayout(
      mainAxisStride: h,
      crossAxisStride: (constraints.crossAxisExtent) - w,
      childMainAxisExtent: 255,
      childCrossAxisExtent: 150,
      reverseCrossAxis: false,
      crossAxisCount: 2,
    );
  }

  @override
  bool shouldRelayout(MySliver oldDelegate) {
    return false;
  }
}
