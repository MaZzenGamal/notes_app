import 'package:flutter/material.dart';
import 'package:notes_app/widgets/search_icon.dart';
import '../widgets/custom_appBar.dart';
import '../widgets/custom_form_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: 'Edit Note', widget: [customIcon(icon: Icons.done)]),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          children: [
            CustomFormTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 18,
            ),
            CustomFormTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
