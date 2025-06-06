import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:google_fonts/google_fonts.dart';
/* CONSTANT IMPORT */
import 'package:untitled/constant.dart';
/* CUSTOM FUNCTION IMPORT */
import 'package:untitled/function.dart';
/* PROVIDER IMPORT */
import 'package:untitled/provider/cart.provider.dart';
/* MODEL IMPORT */
import 'package:untitled/models/cart/cart.model.dart';

class CartItemComponent extends StatelessWidget {
  const CartItemComponent({super.key, required this.cart});

  final CartModel cart;

  @override
  Widget build(BuildContext context) {
    void increaseItemCount() {
      final cartProvider = Provider.of<CartProvider>(context, listen: false);

      cartProvider.increaseProductInCart(productID: cart.product.id);
    }

    void decreaseItemCount() {
      final cartProvider = Provider.of<CartProvider>(context, listen: false);

      cartProvider.decreaseProductInCart(productID: cart.product.id);
    }

    void removeItemFromCart() {
      final cartProvider = Provider.of<CartProvider>(context, listen: false);

      cartProvider.removeProductFromCart(productID: cart.product.id);
    }

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
                    trimText(cart.product.name, maxLength: 36),
                    style: GoogleFonts.ibmPlexSans(
                      color: greyLike,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    softWrap: true,
                    maxLines: 2,
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
                            onPressed: () => decreaseItemCount(),
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
                            "${cart.quantity}",
                            style: GoogleFonts.ibmPlexSans(
                              color: greyLike,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 15),
                          IconButton(
                            onPressed: () => increaseItemCount(),
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
                        onPressed: () => removeItemFromCart(),
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
