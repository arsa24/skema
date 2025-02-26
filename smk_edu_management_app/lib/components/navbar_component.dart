import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
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
  late PageController _controller;
  int _index = 0;
  final List<String> _routes = <String>[
    "/home",
    "/task",
    "/learning",
    "/profile",
  ];

  @override
  void initState() {
    _controller = PageController(initialPage: _index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          HomeScreen(),
          TaskScreen(),
          LearningScreen(),
          ProfileScreen(),
        ],
        onPageChanged: (value) {
          setState(() {
            _index = value;
          });
          context.go(_routes[value]);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (v) {
          _controller.animateToPage(
            v,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        selectedLabelStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xFF585F67),
        ),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          _navItem("assets/vector/house.vec", "Home"),
          _navItem("assets/vector/check.vec", "Tasks"),
          _navItem("assets/vector/learning.vec", "Learning"),
          _navItem("assets/vector/user.vec", "Profile"),
        ],
      ),
    );
  }
}

BottomNavigationBarItem _navItem(String assetPath, String label) =>
    BottomNavigationBarItem(
      icon: SvgPicture(
        AssetBytesLoader(assetPath),
        colorFilter: ColorFilter.mode(Color(0xFF585F67), BlendMode.srcIn),
      ),
      label: label,
      activeIcon: SvgPicture(AssetBytesLoader(assetPath)),
    );
