part of 'notes_cubit.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesLoading extends NotesState {}
class NotesSuccess extends NotesState {

  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}
class NotesError extends NotesState {
  final String error;
  NotesError(this.error);

}
