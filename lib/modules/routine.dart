import 'package:isar/isar.dart';
import 'package:flutter_application_1/modules/category.dart';
part 'routine.g.dart';

@Collection()
class Routine {
  Id id = Isar.autoIncrement;
  late String title;
  
  @Index()
  late String startTime;

  @Index(caseSensitive: false)
  late String day;

  @Index(composite: [CompositeIndex('title')])
  final category = IsarLink<Category>();
}