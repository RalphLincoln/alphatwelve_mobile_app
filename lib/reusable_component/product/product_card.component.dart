import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
/* CONSTANT IMPORT */
import 'package:untitled/constant.dart';
/* MODEL IMPORT */
import 'package:untitled/models/product/product.model.dart';

class ProductCardComponent extends StatelessWidget {
  const ProductCardComponent({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 160,
          height: 180,
          decoration: BoxDecoration(
            color: lightGreyLike,
            borderRadius: BorderRadius.circular(7.0),
          ),
          child: Center(
            child: Image.asset(
              product.image,
              width: 120,
              height: 120,
            ),
          ),
        ),
        const SizedBox(height: 7),
        Text(
          product.name,
          style: GoogleFonts.ibmPlexSans(fontSize: 14),
        ),
        Text(
          "${product.size}|${product.color}",
          style: GoogleFonts.ibmPlexSans(fontSize: 14),
        ),
        const SizedBox(height: 9),
        Text(
          "\$${product.amount}",
          style: GoogleFonts.ibmPlexSans(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
