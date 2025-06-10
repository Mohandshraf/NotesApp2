import 'package:notesapp/models/note_model.dart';

abstract class NotesStates {}

class NotesInitial extends NotesStates {}



class NotesLoading extends NotesStates {
  final List<NoteModel>? notes;

  NotesLoading({ this.notes});
}

class NotesSucess extends NotesStates {
  final List<NoteModel> notes;

  NotesSucess(this.notes);
}

class NotesFailure extends NotesStates {
  final String? errMessage;

  NotesFailure({this.errMessage});
}
