part of 'add_notes_cubit.dart';

abstract class AddNotesState {}

class AddNoteInitial extends AddNotesState {}

class AddNoteLoading extends AddNotesState {}

class AddNoteSuccess extends AddNotesState {}

class AddNoteFailure extends AddNotesState {
  final String? errMessage;

  AddNoteFailure({ this.errMessage});
}
