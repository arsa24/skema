import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:smk_edu_management_app/core/constant.dart';
import 'package:smk_edu_management_app/widgets/custom_onboarding.dart';
import "package:gap/gap.dart";

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _controller = PageController();
  int _index = 0;

  final List<Widget> _content = [
    CustomOnboarding(
      title: "Pantau Semua Tugas",
      desc: "Pantau tugas: cek status terkumpul & belum di satu tempat.",
      img: "assets/images/pantau_semua_tugas.png",
    ),
    CustomOnboarding(
      title: "Kelola Semua Tugas dengan Mudah",
      desc: "Pantau tugas: cek status terkumpul & belum di satu tempat.",
      img: "assets/images/kelola_semua_tugas.png",
    ),
    CustomOnboarding(
      title: "Ayo Kita Mulai!",
      desc:
          "Selesaikan tugas dengan tepat waktu dan kerjakan berbagai materi dengan efektif",
      img: "assets/images/ayo_mulai.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: _content.length,
              onPageChanged: (v) {
                setState(() {
                  _index = v;
                });
              },
              itemBuilder: (context, index) => _content[index],
            ),
          ),
          Wrap(
            spacing: 6,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              AnimatedContainer(
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 400),
                width: _index == 0 ? 16 : 6,
                height: 6,
                decoration: BoxDecoration(
                  color:
                      _index == 0 ? Constant.ternaryDark : Constant.grayColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              AnimatedContainer(
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 400),
                width: _index == 1 ? 16 : 6,
                height: 6,
                decoration: BoxDecoration(
                  color:
                      _index == 1 ? Constant.ternaryDark : Constant.grayColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 400),
                curve: Curves.easeInOut,
                width: _index == 2 ? 16 : 6,
                height: 6,
                decoration: BoxDecoration(
                  color:
                      _index == 2 ? Constant.ternaryDark : Constant.grayColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          ),
          Gap(30),
          Padding(
            padding: const EdgeInsets.only(right: 24.0, left: 24, bottom: 30),
            child: GestureDetector(
              onTap: () {
                if (_index != _content.length - 1) {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                } else {
                  context.go("/welcome");
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: Constant.ternaryDark,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.center,
                  _index == _content.length - 1 ? "Mulai Sekarang" : "Lanjut",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Constant.whiteColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
