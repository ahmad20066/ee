import 'package:clinic/models/lesson_model.dart';

class TopicModel {
  final String title;
  final String? description;
  final List<LessonModel> lessons;
  TopicModel({
    required this.title,
    this.description,
    required this.lessons,
  });
}
