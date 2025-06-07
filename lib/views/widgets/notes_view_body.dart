import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_app_bar.dart';
import 'package:notesapp/views/widgets/custom_notes_item.dart';
import 'package:notesapp/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [CustomAppBar(), Expanded(child: NotesListView())],
      ),
    );
  }
}
