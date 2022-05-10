import 'dart:io';

class CommentModel {
  final String id;
  final String userId;
  final String? commentText;
  final File? image;
  final File? video;
  CommentModel({
    required this.id,
    required this.userId,
    this.commentText,
    this.image,
    this.video,
  });
}
