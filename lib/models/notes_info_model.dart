import 'package:hive/hive.dart';
part 'notes_info_model.g.dart';

@HiveType(typeId: 0)
class NotesInfo extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  NotesInfo({required this.title, required this.description});
}
