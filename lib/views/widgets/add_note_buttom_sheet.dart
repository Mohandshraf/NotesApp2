import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/add_note_form.dart';
import 'package:notesapp/views/widgets/custom_buttom.dart';
import 'package:notesapp/views/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 32),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}
