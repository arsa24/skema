import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smk_edu_management_app/core/constant.dart';
import 'package:vector_graphics/vector_graphics.dart';

class CustomNavbarItem {
  static vectorIcon(String label, String pathVectorIcon) {
    return BottomNavigationBarItem(
      icon: SvgPicture(
        AssetBytesLoader(pathVectorIcon),
        colorFilter: ColorFilter.mode(Constant.grayColor, BlendMode.srcIn),
      ),
      label: label,
      activeIcon: SvgPicture(AssetBytesLoader(pathVectorIcon)),
    );
  }
}
