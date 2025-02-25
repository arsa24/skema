import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
  final List<Widget> _screens = <Widget>[
    HomeScreen(),
    TaskScreen(),
    LearningScreen(),
    ProfileScreen(),
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
        children: _screens,
        onPageChanged:
            (value) => setState(() {
              _index = value;
            }),
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
          BottomNavigationBarItem(
            icon: SvgPicture(
              AssetBytesLoader("assets/vector/house.vec"),
              colorFilter: ColorFilter.mode(Color(0xFF585F67), BlendMode.srcIn),
            ),
            label: "Home",
            activeIcon: SvgPicture(AssetBytesLoader("assets/vector/house.vec")),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture(
              AssetBytesLoader("assets/vector/check.vec"),
              colorFilter: ColorFilter.mode(Color(0xFF585F67), BlendMode.srcIn),
            ),
            label: "Task",
            activeIcon: SvgPicture(AssetBytesLoader("assets/vector/check.vec")),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture(
              AssetBytesLoader("assets/vector/learning.vec"),
              colorFilter: ColorFilter.mode(Color(0xFF585F67), BlendMode.srcIn),
            ),
            label: "Learning",
            activeIcon: SvgPicture(
              AssetBytesLoader("assets/vector/learning.vec"),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture(
              AssetBytesLoader("assets/vector/user.vec"),
              colorFilter: ColorFilter.mode(Color(0xFF585F67), BlendMode.srcIn),
            ),
            label: "Profile",
            activeIcon: SvgPicture(AssetBytesLoader("assets/vector/user.vec")),
          ),
        ],
      ),
    );
  }
}
