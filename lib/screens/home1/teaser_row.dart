import 'package:flutter/material.dart';

import 'teaser.dart';

class TeaserRow extends StatelessWidget {
  final String name;
  const TeaserRow({
    Key key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 22,
              ),
            ),
            Text(
              'See all',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 255,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 4,
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Teaser();
            },
          ),
        ),
      ],
    );
  }
}
