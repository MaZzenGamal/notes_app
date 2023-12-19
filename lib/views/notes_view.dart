import 'package:flutter/material.dart';
import '../widgets/add_note_bottom_sheet.dart';
import '../widgets/notes_view_body.dart';
import '../widgets/search_icon.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text('Notes'),
        ),
        actions: [searchIcon()],
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.purple,
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const addNoteBottomSheet();
              });
        },
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
