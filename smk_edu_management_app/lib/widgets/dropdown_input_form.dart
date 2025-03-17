import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smk_edu_management_app/core/constant.dart';

// ignore: must_be_immutable
class DropdownInputForm extends StatefulWidget {
  DropdownInputForm({
    super.key,
    required this.dropItems,
    required this.onChanged,
    this.selectedValue,
    this.validator,
  });
  final List<String> dropItems;
  String? selectedValue;
  final ValueChanged<String?> onChanged;
  final String? Function(String?)? validator;

  @override
  State<DropdownInputForm> createState() => _DropdownInputFormState();
}

class _DropdownInputFormState extends State<DropdownInputForm> {
  @override
  void initState() {
    if (widget.selectedValue != null &&
        !widget.dropItems.contains(widget.selectedValue)) {
      widget.selectedValue = null;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      menuMaxHeight: (double.infinity - (24 * 2)),
      validator: widget.validator,
      value: widget.selectedValue,
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
        prefixIcon: Icon(Icons.school_outlined, color: Constant.grayColor),
        hintText: "Pilih peranmu",
        hintStyle: GoogleFonts.inter(
          color: Constant.whiteColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
      items:
          widget.dropItems
              .map((String e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
      onChanged: (value) {
        setState(() {
          widget.selectedValue = value;
        });
        print("isi: $value");
        widget.onChanged(value);
      },
    );
  }
}
