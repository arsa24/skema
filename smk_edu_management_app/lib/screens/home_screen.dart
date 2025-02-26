import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smk_edu_management_app/constant/constant.dart';
import 'package:smk_edu_management_app/lists/history_list.dart';
import 'package:smk_edu_management_app/lists/task_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final String name = 'John Doe';
  final int notificationCOunt = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 86,
        title: Text(
          "Hai, $name",
          style: GoogleFonts.inter(
            color: Constant().whiteColor,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
          textAlign: TextAlign.left,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 24.0),
            child: Stack(
              children: [
                Icon(
                  Icons.notifications_outlined,
                  color: Constant().grayColor,
                  size: 32,
                ),
                if (notificationCOunt > 0)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Constant().redColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 24,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.symmetric(horizontal: 24),
              height: 136,
              child: Image.asset("assets/images/banner-1.png"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Tugas",
                style: GoogleFonts.inter(
                  color: Constant().whiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TaskList(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "History",
                style: GoogleFonts.inter(
                  color: Constant().whiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            HistoryList(),
          ],
        ),
      ),
    );
  }
}
