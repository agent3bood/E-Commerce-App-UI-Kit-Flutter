import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(
        AppBar().preferredSize.height + 60,
      );

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          _scaffoldKey.currentState.openDrawer();
        },
        icon: Icon(
          Icons.menu,
          color: Colors.grey,
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
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: Material(
            color: Colors.white,
            elevation: 10,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            clipBehavior: Clip.antiAlias,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Your Product',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
