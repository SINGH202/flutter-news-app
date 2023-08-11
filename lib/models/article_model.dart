import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subTitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  Article({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  static List<Article> articles = [
    Article(
      id: "1",
      title: "This is the test title of the news application 1",
      subTitle: "Test subTitle",
      body: "Test body",
      author: "Test author",
      authorImageUrl:
          "https://images.unsplash.com/photo-1687360441205-807780a8e5db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMDF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
      category: "Test category",
      imageUrl:
          "https://plus.unsplash.com/premium_photo-1671303046504-6cd039a4b0fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      views: 31322,
      createdAt: DateTime.now().subtract(const Duration(hours: 2)),
    ),
    Article(
      id: "2",
      title: "This is the test title of the news application 2",
      subTitle: "Test subTitle",
      body: "Test body",
      author: "Test author",
      authorImageUrl:
          "https://images.unsplash.com/photo-1687360441205-807780a8e5db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMDF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
      category: "Test category",
      imageUrl:
          "https://plus.unsplash.com/premium_photo-1671303046504-6cd039a4b0fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      views: 41322,
      createdAt: DateTime.now().subtract(const Duration(hours: 3)),
    ),
    Article(
      id: "3",
      title: "This is the test title of the news application 3",
      subTitle: "Test subTitle",
      body: "Test body",
      author: "Test author",
      authorImageUrl:
          "https://images.unsplash.com/photo-1687360441205-807780a8e5db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMDF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
      category: "Test category",
      imageUrl:
          "https://plus.unsplash.com/premium_photo-1671303046504-6cd039a4b0fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      views: 13224,
      createdAt: DateTime.now().subtract(const Duration(hours: 7)),
    ),
    Article(
      id: "4",
      title: "This is the test title of the news application 4",
      subTitle: "Test subTitle",
      body: "Test body",
      author: "Test author",
      authorImageUrl:
          "https://images.unsplash.com/photo-1687360441205-807780a8e5db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMDF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
      category: "Test category",
      imageUrl:
          "https://plus.unsplash.com/premium_photo-1671303046504-6cd039a4b0fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      views: 13220,
      createdAt: DateTime.now().subtract(const Duration(hours: 12)),
    ),
    Article(
      id: "5",
      title: "This is the test title of the news application 5",
      subTitle: "Test subTitle",
      body: "Test body",
      author: "Test author",
      authorImageUrl:
          "https://images.unsplash.com/photo-1687360441205-807780a8e5db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMDF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
      category: "Test category",
      imageUrl:
          "https://plus.unsplash.com/premium_photo-1671303046504-6cd039a4b0fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      views: 13221,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: "1",
      title: "This is the test title of the news application 1",
      subTitle: "Test subTitle",
      body: "Test body",
      author: "Test author",
      authorImageUrl:
          "https://images.unsplash.com/photo-1687360441205-807780a8e5db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMDF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
      category: "Test category",
      imageUrl:
          "https://plus.unsplash.com/premium_photo-1671303046504-6cd039a4b0fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      views: 31322,
      createdAt: DateTime.now().subtract(const Duration(hours: 2)),
    ),
    Article(
      id: "2",
      title: "This is the test title of the news application 2",
      subTitle: "Test subTitle",
      body: "Test body",
      author: "Test author",
      authorImageUrl:
          "https://images.unsplash.com/photo-1687360441205-807780a8e5db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMDF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
      category: "Test category",
      imageUrl:
          "https://plus.unsplash.com/premium_photo-1671303046504-6cd039a4b0fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      views: 41322,
      createdAt: DateTime.now().subtract(const Duration(hours: 3)),
    ),
    Article(
      id: "3",
      title: "This is the test title of the news application 3",
      subTitle: "Test subTitle",
      body: "Test body",
      author: "Test author",
      authorImageUrl:
          "https://images.unsplash.com/photo-1687360441205-807780a8e5db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMDF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
      category: "Test category",
      imageUrl:
          "https://plus.unsplash.com/premium_photo-1671303046504-6cd039a4b0fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      views: 13224,
      createdAt: DateTime.now().subtract(const Duration(hours: 7)),
    ),
    Article(
      id: "4",
      title: "This is the test title of the news application 4",
      subTitle: "Test subTitle",
      body: "Test body",
      author: "Test author",
      authorImageUrl:
          "https://images.unsplash.com/photo-1687360441205-807780a8e5db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMDF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
      category: "Test category",
      imageUrl:
          "https://plus.unsplash.com/premium_photo-1671303046504-6cd039a4b0fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      views: 13220,
      createdAt: DateTime.now().subtract(const Duration(hours: 12)),
    ),
    Article(
      id: "5",
      title: "This is the test title of the news application 5",
      subTitle: "Test subTitle",
      body: "Test body",
      author: "Test author",
      authorImageUrl:
          "https://images.unsplash.com/photo-1687360441205-807780a8e5db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMDF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
      category: "Test category",
      imageUrl:
          "https://plus.unsplash.com/premium_photo-1671303046504-6cd039a4b0fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      views: 13221,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subTitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        views,
        createdAt,
      ];
}
