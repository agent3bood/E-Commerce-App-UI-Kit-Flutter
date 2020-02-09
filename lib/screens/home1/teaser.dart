import 'package:flutter/material.dart';

class Teaser extends StatelessWidget {
  const Teaser({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        constraints: BoxConstraints.tight(
          Size(
            150,
            355,
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          children: <Widget>[
            Image.asset(
              'images/Model-PNG-Picture-1.png',
              width: 150,
              height: 180,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$27',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ],
                  ),
                  Text(
                    'Women T-shirt',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
