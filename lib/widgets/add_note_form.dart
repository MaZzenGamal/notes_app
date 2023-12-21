import 'package:flutter/material.dart';

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
          CustomButton(onPressed: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }else{
              autoValidateMode = AutovalidateMode.always;
              setState(() {

              });
            }
          }),
        ],
      ),
    );
  }
}