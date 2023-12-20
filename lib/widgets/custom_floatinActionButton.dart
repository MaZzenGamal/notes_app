import 'package:flutter/material.dart';

import 'add_note_bottom_sheet.dart';

FloatingActionButton customFloatingActionButton(BuildContext context) {
  return FloatingActionButton(
    splashColor: Colors.purple,
    shape: const CircleBorder(),
    onPressed: () {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return const AddNoteBottomSheet();
          });
    },
    backgroundColor: Colors.lightBlueAccent,
    child: const Icon(
      Icons.add,
      color: Colors.black,
    ),
  );
}