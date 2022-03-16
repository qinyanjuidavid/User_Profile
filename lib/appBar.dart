import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: Icon(
      Icons.arrow_back_ios,
      color: const Color.fromRGBO(24, 52, 81, 1),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    // Colors.transparent,
    actions: [
      IconButton(
        icon: Icon(Icons.more_vert),
        color: const Color.fromRGBO(24, 52, 81, 1),
        onPressed: () {},
      ),
    ],
    title: Center(
      child: Text(
        "Profile",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: const Color.fromRGBO(24, 52, 81, 1),
        ),
      ),
    ),
  );
}
