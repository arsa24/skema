import 'package:flutter/material.dart';
import "package:smk_edu_management_app/sections/subjects_list.dart";
import "package:gap/gap.dart";
import 'package:smk_edu_management_app/core/constant.dart';
import 'package:smk_edu_management_app/styles/custom_style.dart';

class TaskSiswa extends StatelessWidget {
  const TaskSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tugas"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            spacing: 24,
            children: [
              Gap(6),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Constant.grayColor,
                        width: 2,
                      )
                    ),
                    hintText: "Cari mapel",
                    hintStyle: CustomStyle.fontStyle(
                      color: Constant.grayColor,
                      size: 14,
                      weight: FontWeight.w500
                    ),
                    suffixIcon: IconButton(
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    ),
                    fillColor: Constant.secondaryDark,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.transparent
                      )
                    ),
                  ),
                ),
              ),
              SubjectsList(),
            ],
          ),
        ),
      ),
    );
  }
}
