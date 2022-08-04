import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../data/app_data.dart';
import '../routes/router.dart';

class SinglePostPage extends StatelessWidget {
  final int postId;
  const SinglePostPage({
    Key? key,
    required this.postId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final post = Post.posts[postId - 1];
    return Scaffold(
      backgroundColor: post.color,
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                post.title,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
                onPressed: () => GoRouter.of(context).push('/posts/1'),
                child: const Text('Go to Post1'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
                onPressed: () => GoRouter.of(context).push('/posts/2'),
                child: const Text('Go to Post2'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
                onPressed: () => GoRouter.of(context).push('/posts/3'),
                child: const Text('Go to Post3'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
                onPressed: () => GoRouter.of(context).push('/posts/4'),
                child: const Text('Go to Post4'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
                onPressed: () => GoRouter.of(context).push('/users/2'),
                child: const Text('Go to Users'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
