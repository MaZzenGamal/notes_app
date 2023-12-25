import 'package:flutter/material.dart';

Padding customIcon({required IconData icon, required void Function()? onPressed}) {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: IconButton(
      onPressed: onPressed,
      icon:  Icon(icon,color: Colors.white,),
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