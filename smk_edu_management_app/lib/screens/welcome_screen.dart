import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smk_edu_management_app/components/custom_onboarding.dart';
import 'package:smk_edu_management_app/constant/constant.dart';
import 'package:smk_edu_management_app/screens/login_screen.dart';
import 'package:smk_edu_management_app/screens/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomOnboarding(
            desc:
                "Aplikasi Pengumpulan Tugas\nLebih Mudah, Cepat dan Terorganisir",
            title: "Selamat Datang\ndi Aplikasi Skema",
          ),
          Gap(50),
          Padding(
            padding: const EdgeInsets.only(right: 24.0, left: 24, bottom: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: Constant().ternary,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.center,
                  "Daftar",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Constant().whiteColor,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text(
              textAlign: TextAlign.center,
              "Masuk",
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Constant().ternary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
