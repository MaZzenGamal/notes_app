import 'package:flutter/material.dart';

Padding searchIcon() {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.search),
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