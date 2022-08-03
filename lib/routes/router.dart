import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';
import '../posts/posts_page.dart';
import '../posts/single_post_page.dart';

import '../search_results_page.dart';
import '../settings/settings_page.dart';
import '../users/user_profile_page.dart';
import '../users/users_page.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(path: '/', page: HomePage, children: [
      AutoRoute(
        path: 'posts',
        name: 'PostsRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: PostsPage,
          ),
          AutoRoute(
            path: ':postId',
            page: SinglePostPage,
          ),
          AutoRoute(
            path: 'searchResults',
            page: SearchResultsPage,
          ),
        ],
      ),
      AutoRoute(
        path: 'users',
        name: 'UsersRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: UsersPage,
          ),
          AutoRoute(
            path: ':userId',
            usesPathAsKey: true,
            page: UserProfilePage,
          ),
          AutoRoute(
            path: 'searchResults',
            page: SearchResultsPage,
          ),
        ],
      ),
      AutoRoute(
        path: 'settings',
        name: 'SettingsRouter',
        page: SettingsPage,
        children: [
          AutoRoute(
            path: 'searchResults',
            page: SearchResultsPage,
          ),
        ],
      )
    ]),
  ],
)
class AppRouter extends _$AppRouter {}
