import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key, required this.items, required this.shell});
  final List<BottomNavigationBarItem> items;
  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: shell,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: shell.currentIndex,
        onTap: shell.goBranch,
        items: items,
      ),
    );
  }
}
