import 'package:flutter/material.dart';

class InputModel {
  final String label;
  final String hint;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;
  final IconData icon;

  InputModel({required this.controller, required this.hint, this.keyboardType = TextInputType.text, this.isPassword = false, required this.label, required this.icon});
}