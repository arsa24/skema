import "package:carousel_slider/carousel_slider.dart";
import 'package:flutter/material.dart';
import 'package:smk_edu_management_app/models/reminder_model.dart';
import 'package:smk_edu_management_app/widgets/reminder_widget.dart';

class ReminderCarousel extends StatelessWidget {
  ReminderCarousel({super.key});
  final List<ReminderModel> content = [
    ReminderModel(
      imgPath: "assets/images/test_img.jpg",
      title: "Jagalah\nKebersihan",
    ),
    ReminderModel(
      imgPath: "assets/images/test_img.jpg",
      title: "Jangan Lupa\nMandi",
    ),
    ReminderModel(
      imgPath: "assets/images/test_img.jpg",
      title: "Buang Sampah\npada Tempatnya",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        width: double.infinity,
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            disableCenter: false,
            initialPage: 0,
            viewportFraction: 1,
            autoPlay: true,
            aspectRatio: 1/1,
          ),
          items:
              content.map((item) {
                return Builder(
                  builder:
                      (BuildContext context) => ReminderWidget(pathImage: item.imgPath, text: item.title)
                );
              }).toList(),
        ),
      ),
    );
  }
}
