import 'package:flutter/material.dart';

AppBar customAppBar({required String title, required List<Widget>? widget}) {
  return AppBar(
    scrolledUnderElevation: 0.0,
    title: Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Text(title),
    ),
    actions: widget,
  );
}
