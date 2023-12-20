import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // <-- Radius
            ),
            backgroundColor: kPrimaryColor,
            foregroundColor: Colors.black,
          ),
          child: const Text(
            'Add',
            style: TextStyle(
                fontSize: 18
            ),
          )),
    );
  }
}