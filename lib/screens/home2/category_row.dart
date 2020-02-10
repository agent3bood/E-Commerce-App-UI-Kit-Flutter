import 'package:flutter/material.dart';

import './category.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    Key key,
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
                'Categories',
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
            height: 16,
          ),
          Container(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Category();
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 4,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
