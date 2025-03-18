import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smk_edu_management_app/core/constant.dart';
import 'package:smk_edu_management_app/models/home_history_model.dart';
import 'package:smk_edu_management_app/styles/custom_style.dart';

class HomeHistoryWidget extends StatelessWidget {
  const HomeHistoryWidget({super.key, required this.historyModel});
  final HomeHistoryModel historyModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Constant.secondaryDark,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile( 
        title: Text(
          historyModel.subject,
          style: CustomStyle.fontStyle(
            size: 12,
            weight: FontWeight.w500,
            color: Constant.grayColor,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              historyModel.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: CustomStyle.fontStyle(
                size: 14,
                weight: FontWeight.w600,
                color: Constant.whiteColor,
              ),
            ),
            Gap(12),
            Text(
              historyModel.submitOn,
              style: CustomStyle.fontStyle(
                size: 12,
                weight: FontWeight.w400,
                color: Constant.grayColor,
              ),
            ),
          ],
        ),
        trailing: Container(
          width: 40,
          height: 40,
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: historyModel.score > 75 ? Colors.green : Colors.red,
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
              historyModel.score.toString(),
              style: CustomStyle.fontStyle(
                size: 10,
                weight: FontWeight.w600,
                color: historyModel.score > 75 ? Colors.green : Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
