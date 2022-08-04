import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../home_page.dart';
import '../posts/posts_page.dart';
import '../posts/single_post_page.dart';

import '../search_results_page.dart';
import '../settings/settings_page.dart';
import '../users/user_profile_page.dart';
import '../users/users_page.dart';

final GoRouter router = GoRouter(routes: <GoRoute>[
  GoRoute(
    path: '/',
    builder: (context, state) => Material(
      child: HomePage(),
    ),
    routes: [
      GoRoute(
        path: 'posts',
        name: 'PostsRouter',
        builder: (context, state) => PostsPage(),
        routes: [
          GoRoute(
            path: ':postId',
            builder: (context, state) => SinglePostPage(
              postId: int.tryParse(state.params['postId']!) ?? -1,
            ),
          ),
          GoRoute(
            path: 'searchResults',
            builder: (context, state) => const SearchResultsPage(),
          ),
        ],
      ),
      GoRoute(
        path: 'users',
        name: 'UsersRouter',
        builder: (context, state) => const UsersPage(),
        routes: [
          GoRoute(
            path: ':userId',
            builder: (context, state) => UserProfilePage(
              userId: int.tryParse(state.params['userId']!) ?? -1,
            ),
          ),
          GoRoute(
            path: 'searchResults',
            builder: (context, state) => const SearchResultsPage(),
          ),
        ],
      ),
      GoRoute(
        path: 'settings',
        name: 'SettingsRouter',
        builder: (context, state) => const SettingsPage(),
        routes: [
          GoRoute(
            path: 'searchResults',
            builder: (context, state) => const SearchResultsPage(),
          ),
        ],
      ),
    ],
  ),
]);
