import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Nav1Page extends StatelessWidget {
  const Nav1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
          onPressed: () {
            context.goNamed('nav1child');
          },
          icon: const Icon(Icons.arrow_right)),
    );
  }
}
