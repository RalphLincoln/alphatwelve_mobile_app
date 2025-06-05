import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
/* CONSTANT IMPORT */
import 'package:untitled/constant.dart';

class NavigateBackComponent extends StatelessWidget {
  const NavigateBackComponent({super.key, required this.name, required this.onTap});

  final String name;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: horizontalPadding,
      ),
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 14,
            ),
            const SizedBox(width: 10),
            Text(
              name,
              style: GoogleFonts.ibmPlexSans(
                color: Colors.black,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
