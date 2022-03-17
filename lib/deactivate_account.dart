import 'package:flutter/material.dart';

class DeactivateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: Text(
        "Deactivate Account",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
