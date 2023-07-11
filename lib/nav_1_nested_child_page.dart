import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_nested_navigation/routes.dart';

class Nav1NestedChildPage extends StatelessWidget {
  const Nav1NestedChildPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_left),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
