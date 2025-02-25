import 'package:flutter/material.dart';
import 'package:smk_edu_management_app/constant/constant.dart';

class HistoryCheckbox extends StatelessWidget {
  const HistoryCheckbox({super.key, required this.isCheck});
  final bool isCheck;

  @override
  Widget build(BuildContext context) {
    return isCheck
        ? Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            border: Border.all(color: Constant().ternary, width: 2),
          ),
          child: Icon(
            Icons.check,
            color: Constant().ternary,
            size: 16,
            weight: 4,
          ),
        )
        : Container(
          width: 22,
          height: 22,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            border: Border.all(color: Constant().ternary, width: 2),
          ),
        );
  }
}
