import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

import 'custom_button.dart';
import 'custom_form_field.dart';

class addNoteBottomSheet extends StatelessWidget {
  const addNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          children: [
            CustomFormTextField(
              hintText: 'Title',
            ),
            const SizedBox(
              height: 18,
            ),
            CustomFormTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 100,
            ),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}


