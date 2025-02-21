import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smk_edu_management_app/screens/home_screen.dart';
import 'package:smk_edu_management_app/screens/learning_screen.dart';
import 'package:smk_edu_management_app/screens/profile_screen.dart';
import 'package:smk_edu_management_app/screens/task_screen.dart';

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
        currentIndex: _index,
        onTap: (v) {
          setState(() {
            _index = v;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/house.svg",
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.color,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/check.svg",
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.color,
              ),
            ),
            label: "Task",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/learning.svg",
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.color,
              ),
            ),
            label: "Learning",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/circle-user-round.svg",
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.color,
              ),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
