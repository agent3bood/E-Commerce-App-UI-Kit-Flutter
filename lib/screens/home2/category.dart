import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/home2/categories');
      },
      child: Card(
        elevation: 1,
        child: Column(
          children: <Widget>[
            Image.asset(
              'images/Group43.png',
              width: 120,
              height: 70,
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Kids',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
