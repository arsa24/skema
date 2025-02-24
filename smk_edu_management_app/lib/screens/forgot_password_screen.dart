import "package:gap/gap.dart";
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smk_edu_management_app/components/input_component.dart';
import 'package:smk_edu_management_app/constant/constant.dart';
import 'package:smk_edu_management_app/models/input_model.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key, });
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [
        InputComponent(inputModel: InputModel(controller: passwordController, hint: "Nomor Telepon", label: "Nomor Telepon", icon: Icons.phone_outlined, keyboardType: TextInputType.number)),
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
                    "Masuk",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Constant().whiteColor,
                    ),
                  ),
                ),
              ),
      ],
    ),);
  }
}