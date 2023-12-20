import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomFormTextField extends StatelessWidget {
   CustomFormTextField(
      {super.key,
        this.hintText,
        this.onChanged,
        this.obscureText = false,
        this.controller,
        this.type,
        this.maxLines = 1
      });

  Function(String)? onChanged;
  String? hintText;
  bool? obscureText;
  TextEditingController? controller = TextEditingController();
  TextInputType? type;
  int maxLines ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      maxLines: maxLines,
      keyboardType: type,
      controller: controller,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      obscureText: obscureText!,
      onChanged: onChanged,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor
          )
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
