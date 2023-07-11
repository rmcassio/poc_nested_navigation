import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Nav1ChildPage extends StatelessWidget {
  const Nav1ChildPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_left),
          ),
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_left),
          ),
        ],
      ),
    );
  }
}
