import 'package:flutter/material.dart';

class Post {
  static final posts = [
    Post(const Color.fromARGB(255, 93, 141, 105), 'Post 1', 1),
    Post(const Color.fromARGB(255, 189, 203, 100), 'Post 2', 2),
    Post(const Color.fromARGB(255, 224, 178, 203), 'Post 3', 3),
    Post(const Color.fromARGB(255, 98, 169, 227), 'Post 4', 4),
  ];
  final Color color;
  final String title;
  final int id;

  Post(this.color, this.title, this.id);
}

class User {
  static final users = [
    User(Colors.amberAccent, 1),
    User(Colors.blue, 2),
    User(Colors.pink.shade100, 3),
    User(Colors.green.shade300, 4),
    User(Colors.orange.shade200, 5),
    User(Colors.purple.shade300, 6),
    User(Colors.grey.shade300, 7),
  ];
  final Color color;
  final int id;

  User(this.color, this.id);
}
