import 'package:flutter/material.dart';

Padding customIcon({required IconData icon}) {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: IconButton(
      onPressed: () {},
      icon:  Icon(icon),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.grey[850]),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    ),
  );
}