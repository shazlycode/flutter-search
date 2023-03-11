import 'package:flutter/material.dart';

import 'models.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  NoteModel noteModel= NoteModel();
  String? searchText='';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(title: const Text('Training'),),body: Column(
      children: [
        TextFormField(
          onChanged: (v){
            setState(() {
              searchText=v;
            });
          },
        ),
        Container(
          height: 600,
          child:searchText!.isEmpty? ListView(shrinkWrap: true,physics: NeverScrollableScrollPhysics(),children: 
        noteModel.notes.map((e) => ListTile(title: Text(e.noteTitle!),subtitle: Text(e.noteDate!),)).toList()
          ,):ListView(children: noteModel.notes.where((element) => element.noteTitle!.toLowerCase().contains(searchText!.toLowerCase())).toList().map((e) => ListTile(
            title: Text(e.noteTitle!),
            subtitle: Text(e.noteDate!),
          )).toList(),),
        ),
      ],
    ),);
  }
}