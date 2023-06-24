import 'package:flutter/material.dart';
import 'package:flutter_ddd/common/router_path.dart';
import 'package:flutter_ddd/presentation/page/home_page.dart';
import 'package:flutter_ddd/presentation/page/list_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: <RouteBase>[
      // 最初に表示されるページ.
      GoRoute(
        path: '/', // トップレベルのパスが必要なので指定する.
        name: HomePage.rootName, // 名前付きルートを指定する.
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
        // ネストしたルートを指定する.
        routes: <RouteBase>[
          GoRoute(
            path: 'list',
            name: ListPage.rootName,
            builder: (BuildContext context, GoRouterState state) {
              return const ListPage();
            },
          ),
        ],
      ),

      // ネストしていないルート。戻るボタンがAppBarに表示されない.
      // GoRoute(
      //   path: '/home',
      //   name: HomePage.rootName,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const HomePage();
      //   },
      // ),
    ],
  );
});
