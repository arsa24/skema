import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smk_edu_management_app/core/constant.dart';
import 'package:smk_edu_management_app/providers/user_provider.dart';
import 'package:smk_edu_management_app/styles/custom_style.dart';

class SettingsSiswa extends StatelessWidget {
  const SettingsSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context, listen: false).user!;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(18, 46, 18, 12),
        child: SingleChildScrollView(
          child: Column(
            spacing: 16,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 36),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Constant.secondaryDark,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    spacing: 24,
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: 2,
                            color: Constant.grayColor,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/test_img.jpg",
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(user.name, style: CustomStyle.fontStyle()),
                          Text(
                            "XII DKV 1",
                            style: CustomStyle.fontStyle(
                              size: 14,
                              weight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              width: 2,
                              color: Constant.grayColor,
                            ),
                          ),
                          child: Text("Edit"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              buttonBar(text: "Bantuan dan FAQ", onTap: () {}),
              buttonBar(text: "Pengaturan", onTap: () {}),
              buttonBar(text: "Logout", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonBar({required String text, required GestureTapCallback onTap}) =>
      GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 24),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Constant.secondaryDark,
          ),
          child: Align(alignment: Alignment.center, child: Text(text)),
        ),
      );
}
