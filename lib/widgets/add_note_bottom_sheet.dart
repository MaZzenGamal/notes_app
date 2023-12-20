import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
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
            SizedBox(
              height: 100,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}


