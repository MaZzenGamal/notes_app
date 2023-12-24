import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_button.dart';
import 'custom_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  TextEditingController titleController = TextEditingController();
  TextEditingController subtitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          CustomFormTextField(
            controller: titleController,
            hintText: 'Title',
          ),
          const SizedBox(
            height: 18,
          ),
          CustomFormTextField(
            controller: subtitleController,
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 100,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      DateTime now = DateTime.now();
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(now);
                      NoteModel noteModel = NoteModel(
                          title: titleController.text,
                          subtitle: subtitleController.text,
                          date: formattedDate,
                          color: Colors.amber.value);

                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autoValidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  });
            },
          ),
          const SizedBox(
            height: 28,
          ),
        ],
      ),
    );
  }
}
