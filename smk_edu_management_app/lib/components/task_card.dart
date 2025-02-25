import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smk_edu_management_app/constant/constant.dart';
import 'package:smk_edu_management_app/models/task_model.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.taskModel});
  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Constant().secondary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24,
        children: [
          Text(
            "From ${taskModel.from}",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Constant().grayColor,
            ),
          ),
          Text(
            taskModel.title,
            style: GoogleFonts.inter(
              fontSize: 16,
              color: Constant().whiteColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          Wrap(
            spacing: 6,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color:
                      taskModel.isFinished
                          ? Constant().greenColor
                          : Constant().redColor,
                  border: Border.all(width: 4, color: Constant().whiteColor),
                ),
              ),
              Text(
                taskModel.isFinished ? "Sudah selesai" : "Belum dikerjakan",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Constant().grayColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
