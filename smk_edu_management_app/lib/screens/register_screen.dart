import 'package:flutter_svg/svg.dart';
import "package:vector_graphics/vector_graphics.dart";
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smk_edu_management_app/components/input_component.dart';
import 'package:smk_edu_management_app/constant/constant.dart';
import 'package:smk_edu_management_app/models/input_model.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 86),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  children: [
                    Text(
                      "Selamat Datang",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 38,
                        color: Constant().whiteColor,
                      ),
                    ),
                    Gap(24),
                    Text(
                      "Silahkan daftar terlebih dahulu sebelum memulai aplikasi",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Constant().grayColor,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(50),
              InputComponent(
                inputModel: InputModel(
                  controller: usernameController,
                  hint: "Nama Lengkap",
                  icon: Icons.person_outline,
                  label: "Nama Lengkap",
                ),
              ),
              Gap(16),
              InputComponent(
                inputModel: InputModel(
                  controller: phoneController,
                  hint: "Nomor Telepon",
                  icon: Icons.phone_outlined,
                  label: "Nomor Telepon",
                  keyboardType: TextInputType.number
                ),
              ),
              Gap(16),
              InputComponent(
                inputModel: InputModel(
                  controller: passwordController,
                  hint: "Kata Sandi",
                  icon: Icons.lock_outline,
                  label: "Kata Sandi",
                  isPassword: true,
                ),
              ),
              Gap(24),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(child: Text("Lupa sandi?", style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Constant().grayColor
                ),)),
              ),
              Gap(24),
              GestureDetector(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Constant().ternary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.center,
                  child: Text(
                    textAlign: TextAlign.center,
                    "Daftar",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Constant().whiteColor,
                    ),
                  ),
                ),
              ),
              Gap(50),
              Row(
                spacing: 24,
                children: [
                  Expanded(child: Divider()),
                  Text(
                    "Atau",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Constant().whiteColor,
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              Gap(28),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Constant().secondary,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,spacing: 8, children: [
                    SvgPicture(
                        AssetBytesLoader("assets/vector/google.vec"),
                      ),
                    Text("Masuk dengan Google", style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        color: Constant().grayColor
                      ),),
                  ],)
                ),
              ),
              Gap(60)
            ],
          ),
        ),
      ),
    );
  }
}
