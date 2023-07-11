import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  final Widget child;
  const HomePage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          _sideMenu(context),
          _content(),
        ],
      ),
    );
  }

  _sideMenu(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.blue,
        child: Column(
          children: [
            ListTile(title: const Text('Nav 1'), onTap: () => context.go(context.namedLocation('nav1'))),
            ListTile(title: const Text('Nav 2'), onTap: () => context.go(context.namedLocation('nav2'))),
            ListTile(title: const Text('Nav 3'), onTap: () => context.go(context.namedLocation('nav3'))),
          ],
        ),
      ),
    );
  }

  _content() {
    return Expanded(
      flex: 3,
      child: child,
    );
  }
}
