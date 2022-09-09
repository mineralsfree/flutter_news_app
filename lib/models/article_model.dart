import "package:equatable/equatable.dart";

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;
  static List<Article> articles = [
    Article(
        id: "1",
        title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
        subtitle: "subtitle",
        body: "body",
        author: "author",
        authorImageUrl: "authorImageUrl",
        category: "category",
        imageUrl:
            "https://i.picsum.photos/id/0/5616/3744.jpg?hmac=3GAAioiQziMGEtLbfrdbcoenXoWAW-zlyEAMkfEdBzQ",
        views: 1,
        createdAt: DateTime.now().subtract(const Duration(hours: 5))),
    Article(
        id: "1",
        title: "title",
        subtitle: "subtitle",
        body: "body",
        author: "author",
        authorImageUrl: "authorImageUrl",
        category: "category",
        imageUrl:
        "https://i.picsum.photos/id/0/5616/3744.jpg?hmac=3GAAioiQziMGEtLbfrdbcoenXoWAW-zlyEAMkfEdBzQ",
        views: 1,
        createdAt: DateTime.now().subtract(const Duration(hours: 5))),
    Article(
        id: "1",
        title: "title",
        subtitle: "subtitle",
        body: "body",
        author: "author",
        authorImageUrl: "authorImageUrl",
        category: "category",
        imageUrl:
        "https://i.picsum.photos/id/0/5616/3744.jpg?hmac=3GAAioiQziMGEtLbfrdbcoenXoWAW-zlyEAMkfEdBzQ",
        views: 1,
        createdAt: DateTime.now().subtract(const Duration(hours: 5)))
  ];

  const Article(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.body,
      required this.author,
      required this.authorImageUrl,
      required this.category,
      required this.imageUrl,
      required this.views,
      required this.createdAt});

  @override
  List<Object?> get props => [
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        views,
        createdAt,
      ];
}
