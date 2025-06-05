import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:google_fonts/google_fonts.dart';
/* CONSTANT IMPORT */
import 'package:untitled/constant.dart';
/* MODEL IMPORT */
import 'package:untitled/models/cart/cart.model.dart';

class CartItemComponent extends StatelessWidget {
  const CartItemComponent({super.key, required this.cart});

  final CartModel cart;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            color: lightGreyLike,
            borderRadius: BorderRadius.circular(7.0),
          ),
          child: Row(
            children: [
              Image.asset(
                cart.product.image,
                width: 100,
                height: 100,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cart.product.name,
                    style: GoogleFonts.ibmPlexSans(
                      color: greyLike,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    "\$${cart.product.amount}",
                    style: GoogleFonts.ibmPlexSans(
                      color: greyLike,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    "In stock",
                    style: GoogleFonts.ibmPlexSans(
                      color: const Color(0xFF10B981),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const HugeIcon(
                              icon: HugeIcons.strokeRoundedMinusSign,
                              color: greyLike,
                            ),
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.white, // White background
                              shape: const CircleBorder(), // Circular shape
                            ),
                          ),
                          const SizedBox(width: 15),
                          Text(
                            "1",
                            style: GoogleFonts.ibmPlexSans(
                              color: greyLike,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 15),
                          IconButton(
                            onPressed: () {},
                            icon: const HugeIcon(
                              icon: HugeIcons.strokeRoundedPlusSign,
                              color: greyLike,
                            ),
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.white, // White background
                              shape: const CircleBorder(), // Circular shape
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      IconButton(
                        onPressed: () {},
                        icon: const HugeIcon(
                          icon: HugeIcons.strokeRoundedDelete02,
                          color: greyLike,
                        ),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white, // White background
                          shape: const CircleBorder(), // Circular shape
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
