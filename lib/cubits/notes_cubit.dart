// lib/states/notes_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/notes_states.dart';
import 'package:notesapp/models/note_model.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesInitial());

  void fetchAllNotes() async {
    emit(NotesLoading());
    try {
      var notesBox = Hive.box(kNotesBox);
      List<NoteModel> notes = notesBox.values.cast<NoteModel>().toList();
      emit(NotesSucess(notes));
    } catch (e) {
      NotesFailure(errMessage: e.toString());
    }
  }
}
