import 'package:flutter/material.dart';
import 'dart:io';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final image = NetworkImage(
        "https://cdn.pixabay.com/photo/2014/11/13/06/12/boy-529067_1280.jpg");
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.only(
        topLeft: const Radius.circular(10),
        topRight: const Radius.circular(10),
      )),
      color: const Color.fromRGBO(24, 52, 81, 1),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 14),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 52,
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    child: ClipOval(
                      child: Material(
                          color: Colors.transparent,
                          child: Ink.image(
                            image: image,
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                            // child: InkWell(onTap: onClicked),
                          )),
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    right: 4,
                    child: ClipOval(
                        child: Container(
                      padding: EdgeInsets.all(3),
                      color: Colors.white,
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: const Color.fromRGBO(24, 52, 81, 1),
                        size: 18,
                      ),
                    )),
                  ),
                ],
              ),
              // User username
              const SizedBox(height: 8),
              Column(
                children: [
                  Text(
                    "Dan M Mfupi",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              //User Location
              const SizedBox(height: 4),
              Column(
                children: [
                  Text(
                    "Nairobi, Kenya",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
