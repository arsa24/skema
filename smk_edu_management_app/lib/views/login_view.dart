import 'package:flutter/gestures.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:smk_edu_management_app/models/input_model.dart';
import 'package:smk_edu_management_app/widgets/input_form_user.dart';
import "package:vector_graphics/vector_graphics.dart";
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smk_edu_management_app/core/constant.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

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
                      "Selamat Datang Kembali",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 38,
                        color: Constant.whiteColor,
                      ),
                    ),
                    Gap(24),
                    Text(
                      "Silahkan masuk terlebih dahulu sebelum memulai aplikasi",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Constant.grayColor,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(50),
              InputFormUser(
                validator: (v) {
                  if (v == null) {
                    return "Masukan nomor telepon";
                  }
                  return null;
                },
                inputModel: InputModel(
                  controller: phoneController,
                  hint: "Nomor Telepon",
                  icon: Icons.phone_outlined,
                  label: "Nomor Telepon",
                  keyboardType: TextInputType.number,
                ),
              ),
              Gap(16),
              InputFormUser(
                validator: (v) {
                  if (v == null) {
                    return "Harap isi kata sandi dengan benar";
                  }
                  return null;
                },
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
                child: GestureDetector(
                  child: GestureDetector(
                    onTap: () {
                      context.go("/forgot");
                    },
                    child: Text(
                      "Lupa sandi?",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Constant.grayColor,
                      ),
                    ),
                  ),
                ),
              ),
              Gap(24),
              GestureDetector(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Constant.ternaryDark,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 18),
                  alignment: Alignment.center,
                  child: Text(
                    textAlign: TextAlign.center,
                    "Masuk",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Constant.whiteColor,
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
                      color: Constant.whiteColor,
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
                    color: Constant.secondaryDark,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 18),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 8,
                    children: [
                      SvgPicture(AssetBytesLoader("assets/vector/google.vec")),
                      Text(
                        "Masuk dengan Google",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          color: Constant.grayColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(24),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: "Belum punya akun? ",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Constant.grayColor,
                    ),
                    children: [
                      TextSpan(
                        text: "Daftar",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Constant.ternaryDark,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                context.go("/register");
                              },
                      ),
                    ],
                  ),
                ),
              ),
              Gap(60),
            ],
          ),
        ),
      ),
    );
  }
}
