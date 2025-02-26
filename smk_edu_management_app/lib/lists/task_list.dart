import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smk_edu_management_app/components/task_card.dart';
import 'package:smk_edu_management_app/models/task_model.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final List<TaskModel> _task = [
    TaskModel(isFinished: true, from: "Erisa", title: "Aljabar linear"),
    TaskModel(
      isFinished: false,
      from: "Asep",
      title:
          "Menuliskan akngka satu sampai 10.000 dengan menggunakan pensil dan ditulis di kertas selembar",
    ),
    TaskModel(isFinished: false, from: "Erisa", title: "Statistika"),
    TaskModel(isFinished: true, from: "Eko", title: "Dasar JawaSkrip"),
    TaskModel(isFinished: true, from: "Dicky", title: "Video pembelajaran"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => TaskCard(taskModel: _task[index]),
        separatorBuilder: (context, index) => Gap(16),
        itemCount: _task.length,
      ),
    );
  }
}
