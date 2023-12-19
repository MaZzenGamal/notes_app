import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24,bottom: 24,left: 18),
      decoration: BoxDecoration(
          color: const Color(0xffFFCD7A),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: const EdgeInsetsDirectional.all(0),
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Build your career with Tharwat'),
            ),
            subtitleTextStyle: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontFamily: 'Poppins',
                fontSize: 18),
            trailing: IconButton(
              color: Colors.grey,
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              'May21 , 2022',
              style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}