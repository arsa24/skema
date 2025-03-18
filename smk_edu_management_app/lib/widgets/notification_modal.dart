import 'package:gap/gap.dart';
import 'package:smk_edu_management_app/models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:smk_edu_management_app/core/constant.dart';
import 'package:smk_edu_management_app/styles/custom_style.dart';

class NotificationModal extends StatefulWidget {
  const NotificationModal({super.key});

  @override
  State<NotificationModal> createState() => _NotificationModalState();
}

class _NotificationModalState extends State<NotificationModal> {
  @override
  Widget build(BuildContext context) {
    final List<NotificationModel> notif = [
      NotificationModel(
        route: "route",
        subject: "Matematika",
        title: "Ulangan Harian Kriptografi",
      ),
      NotificationModel(
        route: "route",
        subject: "PAI",
        title: "Hafalan Surah Al-Isra ayat 32",
      ),
      NotificationModel(
        route: "route",
        subject: "Matematika",
        title: "Ulangan Harian Kriptografi",
      ),
      NotificationModel(
        route: "route",
        subject: "Bahasa Inggirs",
        title: "Tugas Video Interview",
      ),
      NotificationModel(
        route: "route",
        subject: "PAI",
        title: "Hafalan Surah Al-Isra ayat 32",
      ),
      NotificationModel(
        route: "route",
        subject: "Matematika",
        title: "Ulangan Harian Kriptografi",
      ),
      NotificationModel(
        route: "route",
        subject: "Bahasa Inggirs",
        title: "Tugas Video Interview",
      ),
    ];

    return ListView.separated(
      itemBuilder:
          (context, index) => ListTile(
            leading: CircleAvatar(
              backgroundColor: Constant.primaryDark,
              child: Icon(Icons.task),
            ),
            title: Text(
              notif[index].subject,
              style: CustomStyle.fontStyle(size: 14),
            ),
            subtitle: Text(
              notif[index].title,
              style: CustomStyle.fontStyle(
                size: 12,
                weight: FontWeight.w500,
                color: Constant.grayColor,
              ),
            ),
          ),
      separatorBuilder: (context, index) => Gap(12),
      itemCount: notif.length,
    );
  }
}
