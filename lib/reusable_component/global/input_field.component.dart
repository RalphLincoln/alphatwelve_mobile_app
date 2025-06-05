import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:google_fonts/google_fonts.dart';
/* CONSTANT IMPORT */
import 'package:untitled/constant.dart';

class InputFieldComponent extends StatefulWidget {
  const InputFieldComponent({
    super.key,
    required this.controller,
    this.onTextChanged,
  });

  final Function(String)? onTextChanged;
  final TextEditingController controller;

  @override
  State<InputFieldComponent> createState() => _InputFieldComponentState();
}

class _InputFieldComponentState extends State<InputFieldComponent> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.ibmPlexSans(
        color: Colors.grey,
        fontSize: 14,
      ),
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        hintText: 'Search...',
        hintStyle: GoogleFonts.ibmPlexSans(
          color: Colors.grey,
          fontSize: 14,
        ),
        prefixIcon: const HugeIcon(
          icon: HugeIcons.strokeRoundedSearch01,
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
      ),
    );
  }
}
