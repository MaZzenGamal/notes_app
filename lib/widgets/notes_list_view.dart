import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return const NoteItem();
        },
        separatorBuilder: (context, index){
          return const SizedBox(height: 16,);
        }, itemCount: 10);
  }
}