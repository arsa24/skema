import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:smk_edu_management_app/core/constant.dart';
import 'package:smk_edu_management_app/models/home_task_model.dart';
import 'package:smk_edu_management_app/styles/custom_style.dart';
import 'package:smk_edu_management_app/widgets/home_task_widget.dart';

class HomeTaskSiswa extends StatefulWidget {
  const HomeTaskSiswa({super.key});

  @override
  State<HomeTaskSiswa> createState() => _HomeTaskSiswaState();
}

class _HomeTaskSiswaState extends State<HomeTaskSiswa> {
  final List<HomeTaskModel> homeTask = [
    HomeTaskModel(from: "Bu Erisa", status: "Selesai", title: "Statistika"),
    HomeTaskModel(
      from: "Pak Hamid",
      status: "Belum Selesai",
      title: "Sabar dalam Menghadapi Ujian",
    ),
    HomeTaskModel(
      from: "Bu Imel",
      status: "Belum Selesai",
      title: "Membuat Desain User Interface",
    ),
    HomeTaskModel(
      from: "Pak Asep",
      status: "Belum Selesai",
      title: "Membuat Video Berita",
    ),
    HomeTaskModel(
      from: "Pak Gigin",
      status: "Selesai",
      title: "Membuat Proposal Usaha",
    ),
    HomeTaskModel(
      from: "Bu Sulastri",
      status: "Selesai",
      title: "Membuat Video Pembelajaran Tentang Kawih",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        spacing: 24,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 12,
                children: [
                  Text(
                    "Tasks",
                    style: CustomStyle.fontStyle(weight: FontWeight.bold),
                  ),
                  Container(
                    width: 26,
                    height: 26,
                    decoration: BoxDecoration(color: Constant.ternaryDark, borderRadius: BorderRadius.circular(4)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(homeTask.length.toString(), style: CustomStyle.fontStyle(weight: FontWeight.w600, size: 14),),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () => context.go("/siswa/task"),
                icon: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ],
          ),
          SizedBox(
            height: 130,
            child: ListView.separated(
              separatorBuilder: (context, index) => Gap(12),
              itemCount: homeTask.length,
              scrollDirection: Axis.horizontal,
              itemBuilder:
                  (context, index) => HomeTaskWidget(homeTask: homeTask[index]),
            ),
          ),
        ],
      ),
    );
  }
}
