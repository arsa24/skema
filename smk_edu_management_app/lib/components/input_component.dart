import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:smk_edu_management_app/models/input_model.dart';
import 'package:smk_edu_management_app/constant/constant.dart';

class InputComponent extends StatefulWidget {
  const InputComponent({super.key, required this.inputModel});
  final InputModel inputModel;

  @override
  State<InputComponent> createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  bool isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
            controller: widget.inputModel.controller,
            keyboardType: widget.inputModel.keyboardType,
            obscureText: isShowPassword,
            style: GoogleFonts.inter(
                color: Constant().whiteColor,
                fontWeight: FontWeight.w500,
                fontSize: 14
            ),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              prefixIcon: Icon(widget.inputModel.icon, color: Constant().grayColor,),
              labelText: widget.inputModel.label,
              hintStyle: GoogleFonts.inter(
                color: Constant().grayColor,
                fontWeight: FontWeight.w500,
                fontSize: 14
              ),
              hintText: widget.inputModel.hint,
              suffix: widget.inputModel.isPassword ? IconButton(onPressed: (){
                setState(() {
                  isShowPassword = !isShowPassword;
                });
              }, icon: isShowPassword ? Icon(Icons.visibility_off_outlined) : Icon(Icons.visibility_outlined)) : null
            ),  
);
  }
}