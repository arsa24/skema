import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smk_edu_management_app/core/constant.dart';
import 'package:smk_edu_management_app/models/input_model.dart';
import 'package:smk_edu_management_app/models/user_model.dart';
import 'package:smk_edu_management_app/providers/user_provider.dart';
import 'package:smk_edu_management_app/widgets/dropdown_input_form.dart';
import 'package:smk_edu_management_app/widgets/input_form_user.dart';
import 'package:vector_graphics/vector_graphics.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final List<String> listDrop = ["Guru", "Siswa"];
  String? roleValue;
  UserType? userType;

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 86),
          child: Form(
            key: _fromKey,
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
                          color: Constant.whiteColor,
                        ),
                      ),
                      Gap(24),
                      Text(
                        "Silahkan daftar terlebih dahulu sebelum memulai aplikasi",
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
                  validator:
                      (v) => v?.isEmpty ?? true ? "Tidak boleh kosong" : null,
                  inputModel: InputModel(
                    controller: usernameController,
                    hint: "Nama Lengkap",
                    icon: Icons.person_outline,
                    label: "Nama Lengkap",
                  ),
                ),
                Gap(16),
                DropdownInputForm(
                  validator:
                      (v) => v == null ? "Pilih peran terlebih dahulu" : null,
                  dropItems: listDrop,
                  selectedValue: roleValue,
                  onChanged: (v) {
                    setState(() {
                      if (v == "Guru") {
                        userType = UserType.guru;
                      } else {
                        userType = UserType.siswa;
                      }
                    });
                  },
                ),
                Gap(16),
                InputFormUser(
                  validator: (v) {
                    if (v == null) {
                      return "Tidak boleh kosong";
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
                      return "Tidak boleh kosong";
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
                  child: RichText(
                    text: TextSpan(
                      text: "Sudah punya akun? ",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Constant.grayColor,
                      ),
                      children: [
                        TextSpan(
                          text: "Masuk",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Constant.ternaryDark,
                          ),
                          recognizer:
                              TapGestureRecognizer()
                                ..onTap = () {
                                  context.go("/login");
                                },
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(24),
                GestureDetector(
                  onTap: () {
                    if (_fromKey.currentState?.validate() ?? false) {
                      userProvider.registerUser(
                        usernameController.text,
                        userType!,
                      );
                      if (userType == UserType.guru) {
                        context.go('/guru/home');
                      }else{
                         context.go('/siswa/home');
                      }
                    }
                  },
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
                      "Daftar",
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
                        SvgPicture(
                          AssetBytesLoader("assets/vector/google.vec"),
                        ),
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
                Gap(60),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    usernameController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
