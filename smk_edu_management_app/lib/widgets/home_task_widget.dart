import 'package:flutter/material.dart';
import 'package:smk_edu_management_app/core/constant.dart';
import 'package:smk_edu_management_app/models/home_task_model.dart';
import 'package:smk_edu_management_app/styles/custom_style.dart';

class HomeTaskWidget extends StatelessWidget {
  const HomeTaskWidget({super.key, required this.homeTask});
  final HomeTaskModel homeTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Constant.secondaryDark,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Dari ${homeTask.from}",
            style: CustomStyle.fontStyle(color: Constant.grayColor, size: 12),
          ),

          SizedBox(
            width: 120,
            child: Text(
              homeTask.title,
              softWrap: true,
              textWidthBasis: TextWidthBasis.parent,
              overflow: TextOverflow.ellipsis,
              style: CustomStyle.fontStyle(
                color: Constant.whiteColor,
                size: 14,
                weight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            width: 120,
            child: Row(
              spacing: 12,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: EdgeInsets.all(3),
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color:
                          homeTask.status == "Selesai"
                              ? Constant.greenColor
                              : Constant.redColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                Text(
                  homeTask.status,
                  style: CustomStyle.fontStyle(
                    color: Constant.grayColor,
                    size: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
