import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/note_model.dart';
import 'add_note_form.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});

  final NoteModel note ;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {

  late int currentIndex;

  @override
  void initState() {
    currentIndex =kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
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
              widget.note.color = kColors[index].value;
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