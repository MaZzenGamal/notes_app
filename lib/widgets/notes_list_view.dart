import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16,top: 8),
      child: ListView.separated(

          itemBuilder: (context, index){
            return const NoteItem();
          },
          separatorBuilder: (context, index){
            return const SizedBox(height: 8,);
          }, itemCount: 10),
    );
  }
}