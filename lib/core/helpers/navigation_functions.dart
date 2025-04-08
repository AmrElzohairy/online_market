import 'package:flutter/cupertino.dart';

navTo (BuildContext context, Widget page) {
  Navigator.push(
    context,
    CupertinoPageRoute(
      builder: (context) => page,
    ),
  );
}