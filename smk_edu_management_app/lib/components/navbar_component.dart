import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smk_edu_management_app/screens/home_screen.dart';
import 'package:smk_edu_management_app/screens/learning_screen.dart';
import 'package:smk_edu_management_app/screens/profile_screen.dart';
import 'package:smk_edu_management_app/screens/task_screen.dart';
import "package:vector_graphics/vector_graphics.dart";

class NavbarComponent extends StatefulWidget {
  const NavbarComponent({super.key});

  @override
  State<NavbarComponent> createState() => _NavbarComponentState();
}

class _NavbarComponentState extends State<NavbarComponent> {
  int _index = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    TaskScreen(),
    LearningScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _index, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (v) {
          setState(() {
            _index = v;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture(
              AssetBytesLoader("assets/vector/house.vec"),
            ),
            activeIcon:   SvgPicture(
              AssetBytesLoader("assets/vector/house_active.vec"),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture(
              AssetBytesLoader("assets/vector/check.vec"),
            ),
            activeIcon: SvgPicture(
              AssetBytesLoader("assets/vector/check_active.vec"),
            ),
            label: "Task",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture(
             AssetBytesLoader("assets/vector/learning.vec"),
            ),
            activeIcon: SvgPicture(
             AssetBytesLoader("assets/vector/learning_active.vec"),
            ),
            label: "Learning",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture(
              AssetBytesLoader("assets/vector/user.vec")
            ),
            activeIcon: SvgPicture(
              AssetBytesLoader("assets/vector/user_active.vec")
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
