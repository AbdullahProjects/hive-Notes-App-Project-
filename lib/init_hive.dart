import 'dart:io';
import 'package:explore_hive/models/notes_info_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';

class HiveHelper {
  static late Box<NotesInfo> notesBox;

  static initHiveStorage() async {
    // assign directory path ---------------------------------------------------
    Directory directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);

    // register adapters -------------------------------------------------------
    Hive.registerAdapter(Notes());

    // open boxes --------------------------------------------------------------
    await Hive.openBox<NotesInfo>("notes");
    notesBox = Hive.box<NotesInfo>("notes");
  }

  static Box<NotesInfo> getNotes() => notesBox;
}
