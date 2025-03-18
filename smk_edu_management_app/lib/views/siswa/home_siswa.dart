import "package:smk_edu_management_app/sections/home_history_siswa.dart";
import "package:smk_edu_management_app/sections/home_task_siswa.dart";
import "package:smk_edu_management_app/sections/reminder_carousel.dart";
import 'package:flutter/material.dart';
import "package:gap/gap.dart";
import "package:smk_edu_management_app/core/constant.dart";
import "package:smk_edu_management_app/providers/user_provider.dart";
import "package:smk_edu_management_app/styles/custom_style.dart";
import "package:provider/provider.dart";

class HomeSiswa extends StatefulWidget {
  const HomeSiswa({super.key});

  @override
  State<HomeSiswa> createState() => _HomeSiswaState();
}

class _HomeSiswaState extends State<HomeSiswa> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    final int notificationCOunt = 10;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hai, ${user?.name ?? "Anunimus"}",
          style: CustomStyle.fontStyle(),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  right: 10,
                  child:
                      notificationCOunt > 0
                          ? Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Constant.redColor,
                            ),
                          )
                          : Container(),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_outlined,
                    size: 28,
                    color: Constant.grayColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 2));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              spacing: 24,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(0),
                SizedBox(height: 116, child: ReminderCarousel()),
                HomeTaskSiswa(),
                HomeHistorySiswa(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
