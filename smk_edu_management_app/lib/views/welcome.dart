import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smk_edu_management_app/core/constant.dart';
import 'package:smk_edu_management_app/widgets/custom_onboarding.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomOnboarding(
            desc:
                "Aplikasi Pengumpulan Tugas\nLebih Mudah, Cepat dan Terorganisir",
            title: "Selamat Datang\ndi Aplikasi Skema",
            img: "assets/images/welcome.png",
          ),
          Gap(50),
          Padding(
            padding: const EdgeInsets.only(right: 24.0, left: 24, bottom: 30),
            child: GestureDetector(
              onTap: () {
                context.go("/register");
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
                  "Daftar",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Constant.whiteColor,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              context.go("/login");
            },
            child: Text(
              textAlign: TextAlign.center,
              "Masuk",
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Constant.ternaryDark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
