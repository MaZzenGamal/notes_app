import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import '../constants.dart';
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
        //crossAxisAlignment: CrossAxisAlignment.end,
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
            height: 50,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 16,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onPressed: () {
                    addButtonFunction(context);
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

  void addButtonFunction(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      DateTime now = DateTime.now();
      String formattedDate = DateFormat('yyyy-MM-dd').format(now);
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
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32*2,
       width: 350,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return  GestureDetector(
            onTap: (){
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              isActive: currentIndex == index ,
            ),
          );
        },
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isActive, required this.color,
  });

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive ?  CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 30,
        backgroundColor: color,
      ),
    ) :  CircleAvatar(
        radius: 30,
        backgroundColor: color);
  }
}



