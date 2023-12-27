import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/search_icon.dart';

import 'custom_appBar.dart';
import 'custom_form_field.dart';
import 'edit_notes_color_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  TextEditingController titleController = TextEditingController();

  TextEditingController subtitleController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Edit Note', widget: [customIcon(
        onPressed: (){
          if(titleController.text != ''){
            widget.note.title = titleController.text ;
          }
          if(subtitleController.text != ''){
            widget.note.subtitle = subtitleController.text;
          }
          widget.note.save();
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          Navigator.pop(context);
        },
        icon: Icons.done)]),
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          children: [
            CustomFormTextField(
              controller: titleController,
             hintText: widget.note.title,
            ),
            const SizedBox(
              height: 18,
            ),
            CustomFormTextField(
              controller: subtitleController,
              hintText: widget.note.subtitle,
              maxLines: 5,
            ),
            const SizedBox(
              height: 18,
            ),
            EditNoteColorsList(note:widget.note),
          ],
        ),
      ),
    );
  }
}


