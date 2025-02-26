import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smk_edu_management_app/constant/constant.dart';
import 'package:smk_edu_management_app/models/task_model_2.dart';

class TaskCard2 extends StatelessWidget {
  const TaskCard2({super.key, required this.taskModel2});
  final TaskModel2 taskModel2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Constant().secondary,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12,
              children: [
                Text(
                  taskModel2.subject,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Constant().whiteColor,
                  ),
                ),
                SizedBox(
                  width: 160,
                  child: Text(
                    taskModel2.title,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Constant().grayColor,
                    ),
                  ),
                ),
                Wrap(
                  spacing: 4,
                  children: [
                    Text(
                      taskModel2.day,
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Constant().whiteColor,
                      ),
                    ),
                    Text(
                      taskModel2.time,
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Constant().grayColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios_outlined),
          ],
        ),
      ),
    );
  }
}
