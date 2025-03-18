import 'package:flutter/material.dart';
import 'package:smk_edu_management_app/core/constant.dart';
import 'package:smk_edu_management_app/styles/custom_style.dart';

class SubjectsList extends StatefulWidget {
  const SubjectsList({super.key});

  @override
  State<SubjectsList> createState() => _SubjectsListState();
}

class _SubjectsListState extends State<SubjectsList> {
  final List<String> mapel = [
    "Bahasa Indonesia",
    "Bahasa Sunda",
    "Bahasa Inggris",
    "Pendidikan Agama Islam",
    "PKK",
    "Konsentrasi Keahlian Lima",
    "Matematika",
    "Pendidikan Kewarganegaraan",
    "Sejarah",
    "Fotografi",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: mapel.length,
        itemBuilder:
            (context, index) => Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Constant.secondaryDark,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    mapel[index],
                    textAlign: TextAlign.center,
                    style: CustomStyle.fontStyle(size: 14),
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
