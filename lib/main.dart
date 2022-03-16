import 'package:flutter/material.dart';
import './profile_page.dart';

void main() {
  runApp(MyProfile());
}

class MyProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyProfileState();
  }
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      title: "Deveint Profile",
      home: ProfilePage(),
    );
  }
}
