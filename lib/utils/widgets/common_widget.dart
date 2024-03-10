// common_functions.dart

import 'package:flutter/material.dart';

class CommonWidgets {
  static appBar(context, title) {
    return AppBar(
      title: Text('${title}'),
      leading: Container(
        margin: EdgeInsets.only(left: 25.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.redAccent,
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(
            Icons.arrow_back_ios_rounded, // Use iOS-style back button icon
            color: Colors.white, // Icon color
          ),
          onPressed: () {
            Navigator.pop(context); // Navigate back when the button is pressed
          },
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.redAccent,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
    );
  }
}
