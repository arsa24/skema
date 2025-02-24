import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smk_edu_management_app/constant/constant.dart';

class CustomOnboarding extends StatelessWidget {
  const CustomOnboarding({super.key, required this.desc, required this.title, required this.img});
  final String title;
  final String desc;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 70, right: 24, left: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 340,
            decoration: BoxDecoration(
              color: Constant().secondary,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Image.asset(img),
          ),
          Gap(10),
          Container(
            padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
            child: Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: Constant().whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
                Gap(16),
                Text(
                  textAlign: TextAlign.center,
                  desc,
                  style: GoogleFonts.inter(
                    color: Constant().grayColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
