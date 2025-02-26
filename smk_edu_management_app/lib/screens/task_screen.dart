import 'package:flutter/material.dart';
import 'package:smk_edu_management_app/lists/task_list_2.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 86,
        title: Text("Tugas Untuk Mu"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: Column(children: [
        TaskList2()
      ])),
    );
  }
}
