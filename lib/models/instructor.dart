class InstructorModel {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final String role;
  InstructorModel(
      {required this.id,
      required this.role,
      required this.name,
      required this.imageUrl,
      required this.description});
}
