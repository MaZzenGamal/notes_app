import 'package:flutter/material.dart';

import 'custom_form_field.dart';

class addNoteBottomSheet extends StatelessWidget {
  const addNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Column(
        children: [
          //SizedBox(height: 20,),
          CustomFormTextField(
            hintText: 'Title',
          ),
          const SizedBox(
            height: 18,
          ),
          CustomFormTextField(
            hintText: 'Content',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
