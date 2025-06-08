import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);

  Hive.registerAdapter(NoteModelAdapter());
  runApp(
    DevicePreview(
      enabled: true, // خليها false لو عايز تشغلها بس في debug
      builder:
          (context) => const NotesApp(), // هنا بنبني التطبيق جوا DevicePreview
    ),
  );
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(
        context,
      ), // يخلي اللغات تتغير حسب الجهاز المختار
      builder: DevicePreview.appBuilder, // يبني الواجهة من خلال device_preview
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 41, 38, 38),
      ),

      home: NotesView(),
    );
  }
}
