import 'package:flutter/material.dart';
import 'package:flutter_task_2/samplePage.dart';
import 'package:flutter_task_2/menuA.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  routes: [
    // 既存のルート設定
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(child: HomeScreen());
      },
      routes: [
        GoRoute(
          path: 'about',
          pageBuilder: (context, state) {
            final Map<String, dynamic> extra =
                state.extra as Map<String, dynamic>;
            String name = extra['name'];

            return MaterialPage(
                child: AboutScreen(
              menuName: name,
            ));
          },
          // routes: [
          //   GoRoute(
          //     path: 'about2',
          //     pageBuilder: (context, state) {
          //       return const MaterialPage(child: HomeScreen());
          //     },
          //   ),
          // ],
        ),
      ],
    ),
  ],
);
