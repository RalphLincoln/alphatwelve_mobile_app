import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
/* CONSTANT IMPORT */
import 'package:untitled/constant.dart';
/* MODEL IMPORT */
import 'package:untitled/models/content/content.model.dart';

class ContentCardComponent extends StatelessWidget {
  const ContentCardComponent({super.key, required this.content});

  final ContentModel content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: lightGreyLike,
            borderRadius: BorderRadius.circular(7.0),
          ),
        ),
        const SizedBox(height: 7),
        Text(
          content.name,
          style: GoogleFonts.ibmPlexSans(fontSize: 14),
        ),
        Text(
          "${content.size}|${content.color}",
          style: GoogleFonts.ibmPlexSans(fontSize: 14),
        ),
        const SizedBox(height: 9),
        Text(
          "\$${content.amount}",
          style: GoogleFonts.ibmPlexSans(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
