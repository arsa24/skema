import 'package:flutter/material.dart';
import 'package:smk_edu_management_app/styles/custom_style.dart';

class ReminderWidget extends StatelessWidget {
  const ReminderWidget({
    super.key,
    required this.pathImage,
    required this.text,
  });

  final String pathImage;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(pathImage, fit: BoxFit.cover),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withValues(alpha: 0.1),
                Colors.black.withValues(alpha: 0.6),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(text, style: CustomStyle.fontStyle()),
          ),
        ),
      ],
    );
  }
}
