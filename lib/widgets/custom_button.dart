import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.onPressed, this.isLoading = false});

  final void Function() onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // <-- Radius
            ),
            backgroundColor: kPrimaryColor,
            foregroundColor: Colors.black,
          ),
          child: isLoading
              ? const SizedBox(
            height: 20,
                width: 20,
                child: CircularProgressIndicator(
                            color: Colors.black,
                          ),
              )
              : const Text(
                  'Add',
                  style: TextStyle(fontSize: 18),
                )),
    );
  }
}
