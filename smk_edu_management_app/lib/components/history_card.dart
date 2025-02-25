import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smk_edu_management_app/constant/constant.dart';
import 'package:smk_edu_management_app/models/history_model.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key, required this.historyModel});
  final HistoryModel historyModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        margin: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Constant().secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          title: Text(
            historyModel.subject,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Constant().grayColor,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                historyModel.title,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Constant().whiteColor,
                ),
              ),
              Gap(12),
              Text(
                historyModel.submitOn,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Constant().grayColor,
                ),
              ),
            ],
          ),
          trailing:
              historyModel.isSubmited
                  ? Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color:
                            historyModel.point > 75 ? Colors.green : Colors.red,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        historyModel.point.toString(),
                        style: GoogleFonts.inter(
                          color:
                              historyModel.point > 75
                                  ? Colors.green
                                  : Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                  : null,
        ),
      ),
    );
  }
}
