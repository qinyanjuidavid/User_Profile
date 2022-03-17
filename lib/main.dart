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
        primaryColor: Color.fromARGB(234, 234, 234, 255),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      title: "Deveint Interview",
      home: ProfilePage(),
    );
  }
}
