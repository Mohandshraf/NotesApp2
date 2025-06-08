// lib/states/notes_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';

part 'Add_notes_state.dart'; // لاحظ: ده بيشير للملف التاني

class NotesCubit extends Cubit<AddNotesState> {
  NotesCubit() : super(AddNotesInitial());
}
