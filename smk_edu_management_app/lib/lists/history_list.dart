import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smk_edu_management_app/components/history_card.dart';
import 'package:smk_edu_management_app/models/history_model.dart';

class HistoryList extends StatefulWidget {
  const HistoryList({super.key});

  @override
  State<HistoryList> createState() => _HistoryListState();
}

class _HistoryListState extends State<HistoryList> {
  final List<HistoryModel> _history = [
    HistoryModel(
      isSubmited: true,
      point: 100,
      subject: "Matematika",
      title: "Menuliskan akngka satu sampai 10.000 dengan menggunakan pensil dan ditulis di kertas selembar",
      submitOn: "Submitted on 5 Feb 2025",
    ),
    HistoryModel(
      isSubmited: true,
      point: 50,
      subject: "Informatika",
      title: "Dasar pemrograman",
      submitOn: "Submitted on 5 Feb 2025",
    ),
    HistoryModel(
      isSubmited: false,
      point: 0,
      subject: "Seni Rupa",
      title: "Menguasai Eropa",
      submitOn: "Submitted on 12 Feb 2025",
    ),
    HistoryModel(
      isSubmited: true,
      point: 100,
      subject: "Matematika",
      title: "Aljabar linear",
      submitOn: "Submitted on 5 Feb 2025",
    ),
    HistoryModel(
      isSubmited: false,
      point: 0,
      subject: "Olahraga",
      title: "Video pembelajaran",
      submitOn: "Submitted on 5 Feb 2025",
    ),
    HistoryModel(
      isSubmited: true,
      point: 50,
      subject: "Informatika",
      title: "Dasar pemrograman",
      submitOn: "Submitted on 5 Feb 2025",
    ),
    HistoryModel(
      isSubmited: true,
      point: 10,
      subject: "Matematika",
      title: "Aljabar linear",
      submitOn: "Submitted on 5 Feb 2025",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder:
          (context, index) => HistoryCard(historyModel: _history[index]),
      separatorBuilder: (context, index) => Gap(12),
      itemCount: _history.length,
    );
  }
}
