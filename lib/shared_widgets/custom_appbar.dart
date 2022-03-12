import 'package:flutter/material.dart';

AppBar ourCutomAppBar(BuildContext context,
    {String title = "Dashboard", bool showBackButton = false}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Color(0x44000000),
    elevation: 0,
    title: Text(
      title,
      style: const TextStyle(
          fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}
