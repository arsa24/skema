import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smk_edu_management_app/components/task_card_2.dart';
import 'package:smk_edu_management_app/models/task_model_2.dart';

class TaskList2 extends StatefulWidget {
  const TaskList2({super.key});

  @override
  State<TaskList2> createState() => _TaskList2State();
}

class _TaskList2State extends State<TaskList2> {
  final List<TaskModel2> taskModel2 = <TaskModel2>[
    TaskModel2(
      day: "Senin",
      subject: "Matematika",
      time: "10:00 - 12:00",
      title: "Selesaikan tugas pada buku dari halaman 12 - 13",
    ),
    TaskModel2(
      day: "Senin",
      subject: "Bahasa Indonesia",
      time: "8:00 - 10:00",
      title: "Membuat contoh laporan keuangan",
    ),

    TaskModel2(
      day: "Selasa",
      subject: "Bahasa Inggris",
      time: "8:00 - 10:00",
      title: "Menghafal kosa kata",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => TaskCard2(taskModel2: taskModel2[index]),
        separatorBuilder: (context, index) => Gap(16),
        itemCount: taskModel2.length,
      ),
    );
  }
}
