import 'package:flutter/material.dart';

import '../widgets/notes_view_body.dart';
import '../widgets/search_icon.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text('Notes'),
        ),
        actions: [
          searchIcon()
        ],
      ),
      body: const NotesViewBody(),
    );
  }

}


