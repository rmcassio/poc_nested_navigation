import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_nested_navigation/home_page.dart';
import 'package:poc_nested_navigation/nav1_page.dart';
import 'package:poc_nested_navigation/nav2_page.dart';
import 'package:poc_nested_navigation/nav3_page.dart';
import 'package:poc_nested_navigation/nav_1_child_page.dart';
import 'package:poc_nested_navigation/nav_1_nested_child_page.dart';

import 'route_keys.dart';

class Routes {
  GoRouter router = GoRouter(
    initialLocation: '/nav1',
    errorPageBuilder: (context, state) {
      return MaterialPage(
        child: HomePage(
          key: state.pageKey,
          child: const Center(
            child: Text('Ops, página não encontrada!'),
          ),
        ),
      );
    },
    routes: [
      ShellRoute(
        navigatorKey: RouteKeys.navigatorHome,
        pageBuilder: (context, state, child) {
          return CustomTransitionPage(
            child: HomePage(
              key: state.pageKey,
              child: child,
            ),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          );
        },
        routes: [
          GoRoute(
            name: 'nav1',
            path: '/nav1',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                child: Nav1Page(
                  key: state.pageKey,
                ),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
              );
            },
            routes: [
              GoRoute(
                  name: 'nav1child',
                  path: 'nav1child',
                  parentNavigatorKey: RouteKeys.navigatorHome,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      child: Nav1ChildPage(
                        key: state.pageKey,
                      ),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                    );
                  },
                  routes: [
                    GoRoute(
                      name: 'nav1Nestedchild',
                      path: 'nav1Nestedchild',
                      parentNavigatorKey: RouteKeys.navigatorHome,
                      pageBuilder: (context, state) {
                        return CustomTransitionPage(
                          child: Nav1NestedChildPage(
                            key: state.pageKey,
                          ),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        );
                      },
                    ),
                  ]),
            ],
          ),
          GoRoute(
            name: 'nav2',
            path: '/nav2',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                child: Nav2Page(
                  key: state.pageKey,
                ),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
              );
            },
          ),
          GoRoute(
            name: 'nav3',
            path: '/nav3',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                child: Nav3Page(
                  key: state.pageKey,
                ),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
              );
            },
          ),
        ],
      ),
    ],
  );
}
