import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:smk_edu_management_app/core/constant.dart';
import 'package:smk_edu_management_app/models/input_model.dart';

class InputFormUser extends StatefulWidget {
  const InputFormUser({super.key, required this.inputModel, this.validator});
  final InputModel inputModel;
  final String? Function(String?)? validator;

  @override
  State<InputFormUser> createState() => _InputFormUserState();
}

class _InputFormUserState extends State<InputFormUser> {
  bool isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.inputModel.controller,
      keyboardType: widget.inputModel.keyboardType,
      obscureText: widget.inputModel.isPassword ? !isShowPassword : false,
      style: GoogleFonts.inter(
        color: Constant.whiteColor,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        filled: true,
        fillColor: Constant.secondaryDark,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Constant.grayColor, width: 1.5),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        prefixIcon: Icon(widget.inputModel.icon, color: Constant.grayColor),
        labelText: widget.inputModel.label,
        hintStyle: GoogleFonts.inter(
          color: Constant.grayColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        hintText: widget.inputModel.hint,
        suffixIcon:
            widget.inputModel.isPassword
                ? IconButton(
                  onPressed: () {
                    setState(() {
                      isShowPassword = !isShowPassword;
                    });
                  },
                  icon: Icon(
                    isShowPassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Constant.grayColor,
                  ),
                )
                : null,
      ),
    );
  }
}
