import 'package:flutter/material.dart';
import 'package:flutter_task_2/screen1.dart';
import 'package:flutter_task_2/screen2.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  routes: [
    // 既存のルート設定
    GoRoute(
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        }),
    GoRoute(
      path: '/about',
      pageBuilder: (context, state) {
        return const MaterialPage(child: AboutScreen());
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
);
