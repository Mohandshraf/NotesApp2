import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_app_bar.dart';
import 'package:notesapp/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),

      child: Column(
        children: [
          SizedBox(height: 10, width: 20),
          CustomAppBar(title: "Edit Note", icon: Icons.check),
          CustomTextField(hint: "Title"),
          SizedBox(height: 25),
          CustomTextField(hint: "content", maxLines: 5),
        ],
      ),
    );
  }
}
