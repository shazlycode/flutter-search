class Note{
  final int? id;
  final String? noteTitle;
  final String? noteBody;
  final String? noteDate;
 final bool? isFavorite;

  Note({this.id, this.noteTitle, this.noteBody, this.noteDate, this.isFavorite=false});





}


class NoteModel{
  List<Note> _notes=[Note(id: 1,noteTitle: 'Note 1 Title', noteBody: 'Note 1 Body', noteDate: DateTime.now().toString(), isFavorite: false),
  Note(id: 2,noteTitle: 'Note 2 Title', noteBody: 'Note 2 Body', noteDate: DateTime.now().toString(), isFavorite: false),
Note(id: 3,noteTitle: 'Note 3 Title', noteBody: 'Note 3 Body', noteDate: DateTime.now().toString(), isFavorite: false),
  Note(id: 4,noteTitle: 'Note 4 Title', noteBody: 'Note 4 Body', noteDate: DateTime.now().toString(), isFavorite: false),
  Note(id: 5,noteTitle: 'Note 5 Title', noteBody: 'Note 5 Body', noteDate: DateTime.now().toString(), isFavorite: false),
];
List<Note> get notes=>_notes;
}