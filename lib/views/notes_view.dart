import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appBar.dart';
import 'package:notes_app/widgets/search_icon.dart';
import '../widgets/custom_floatinActionButton.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Notes', widget: [customIcon(icon: Icons.search)]),

      floatingActionButton: customFloatingActionButton(context),//>>>>bottom sheet
      body: const NotesViewBody(),
    );
  }


}
