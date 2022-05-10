class CourseModel {
  final String id;
  final String title;
  final String instructorId;
  final String description;
  final String imageUrl;
  final int? studentsCount;
  final String? overViewImageUrl;
  final String? length;
  final int? lessonsCount;
  final String? instructorName;
  final double price;

  CourseModel({
    this.studentsCount,
    required this.price,
    required this.instructorId,
    this.overViewImageUrl,
    this.length,
    this.lessonsCount,
    this.instructorName,
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}
