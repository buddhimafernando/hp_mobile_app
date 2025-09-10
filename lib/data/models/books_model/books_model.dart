class BooksModel {
  final int number;
  final String title;
  final String originalTitle;
  final String releaseDate;
  final String description;
  final String pages;
  final String cover;
  final int index;

  BooksModel({
    required this.number,
    required this.title,
    required this.originalTitle,
    required this.releaseDate,
    required this.description,
    required this.pages,
    required this.cover,
    required this.index,
  });

  factory BooksModel.fromJson(Map<String, dynamic> json) {
    return BooksModel(
      number: json['number'] as int,
      title: json['title'],
      originalTitle: json['originalTitle'],
      releaseDate: json['releaseDate'],
      description: json['description'],
      pages: json['pages'],
      cover: json['cover'],
      index: json['index'] as int,
    );
  }
}
