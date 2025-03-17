import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import "package:smk_edu_management_app/widgets/home_history_widget.dart";
import 'package:smk_edu_management_app/models/home_history_model.dart';
import 'package:smk_edu_management_app/styles/custom_style.dart';

class HomeHistorySiswa extends StatelessWidget {
  const HomeHistorySiswa({super.key});

  @override
  Widget build(BuildContext context) {
    List<HomeHistoryModel> homeHistory = [
      HomeHistoryModel(
        score: 95,
        subject: "Proses Desain",
        submitOn: "7 Januari 2024",
        title: "Tugas Redesign User Interface Gojek",
      ),
      HomeHistoryModel(
        score: 89,
        subject: "Bahasa Indonesia",
        submitOn: "5 Februari 2024",
        title: "Video Presentasi Bahasa Indonesia",
      ),
      HomeHistoryModel(
        score: 68,
        subject: "Bahasa Sunda",
        submitOn: "3 Januari 2024",
        title: "Ulangan Harian",
      ),
      HomeHistoryModel(
        score: 89,
        subject: "Bahasa Indonesia",
        submitOn: "5 Februari 2024",
        title: "Video Presentasi Bahasa Indonesia",
      ),
      HomeHistoryModel(
        score: 95,
        subject: "Proses Desain",
        submitOn: "7 Januari 2024",
        title: "Tugas Redesign User Interface Gojek",
      ),
      HomeHistoryModel(
        score: 70,
        subject: "Matematika",
        submitOn: "1 Januari 2024",
        title: "Ulangan Harian",
      ),
    ];

    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24,
        children: [
          Text(
            "History",
            style: CustomStyle.fontStyle(weight: FontWeight.bold),
          ),
          SizedBox(
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder:
                  (context, index) =>
                      HomeHistoryWidget(historyModel: homeHistory[index]),
              separatorBuilder: (context, index) => Gap(12),
              itemCount: homeHistory.length,
            ),
          ),
          Gap(12),
        ],
      ),
    );
  }
}
