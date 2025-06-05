import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceRowListComponent extends StatelessWidget {
  const PriceRowListComponent({super.key, required this.title, required this.amount, required this.isTotalAmount});

  final String title;
  final String amount;
  final bool isTotalAmount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.ibmPlexSans(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "\$$amount",
          style: GoogleFonts.ibmPlexSans(
            fontSize: isTotalAmount ? 14 : 12,
            fontWeight: isTotalAmount ? FontWeight.w700 : FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
