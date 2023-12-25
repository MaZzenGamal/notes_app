import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/custom_navigator.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});


  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        navigateAndFinish(context, const EditNoteView());
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 18),
        decoration: BoxDecoration(
            color:  Color(noteModel.color),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsetsDirectional.all(0),
              title:  Text(
                noteModel.title,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(noteModel.subtitle),
              ),
              subtitleTextStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontFamily: 'Poppins',
                  fontSize: 18),
              trailing: IconButton(
                color: Colors.grey,
                onPressed: () {
                  noteModel.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                noteModel.date,//.substring(0,10),
                style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}