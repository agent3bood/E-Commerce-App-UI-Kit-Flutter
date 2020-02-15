import 'package:flutter/material.dart';

import './teaser.dart';

class TeaserRow extends StatelessWidget {
  final String name;

  const TeaserRow({
    Key key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                this.name,
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
            height: 11,
          ),
          Container(
            height: 255,
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Teaser();
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 4,
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
