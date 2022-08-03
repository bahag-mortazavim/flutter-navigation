import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../data/app_data.dart';
import '../routes/router.dart';
import '../widgets.dart';

class PostsPage extends StatelessWidget {
  PostsPage({Key? key}) : super(key: key);
  final posts = Post.posts;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView(
          children: [
            PostTile(
              tileColor: Colors.red,
              postTitle: 'ShowSearch Results',
              onTileTap: () => context.router.push(const SearchResultsRoute()),
            ),
            for (int i = 0; i < posts.length; i++)
              PostTile(
                tileColor: posts[i].color,
                postTitle: posts[i].title,
                onTileTap: () => context.router.push(
                  SinglePostRoute(
                    postId: posts[i].id,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
