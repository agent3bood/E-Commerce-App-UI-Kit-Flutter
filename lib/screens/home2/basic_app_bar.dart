import 'package:flutter/material.dart';

class BasicAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => AppBar().preferredSize;

  BasicAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black45,
        ),
      ),
      actions: <Widget>[
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.live_help,
                color: Colors.grey,
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
