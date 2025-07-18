import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/add_notes_cubit.dart';
import 'package:notesapp/views/widgets/add_note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocListener<AddNoteCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print("state.message");
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },

        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
            bottom: 32,
          ),
          child: SingleChildScrollView(child: AddNoteForm()),
        ),
      ),
    );
  }
}
