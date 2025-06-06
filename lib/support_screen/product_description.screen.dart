import 'package:get/get.dart';
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
/* SUPPORT SCREEN IMPORT */
import 'package:untitled/support_screen/cart.screen.dart';
/* MODEL IMPORT */
import 'package:untitled/models/product/product.model.dart';
/* REUSABLE COMPONENT IMPORT */
import 'package:untitled/reusable_component/global/big_header.component.dart';
import 'package:untitled/reusable_component/global/custom_button.component.dart';

class ProductDescriptionScreen extends StatelessWidget {
  const ProductDescriptionScreen({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    void addToCart({required ProductModel product}) {
      final cartProvider = Provider.of<CartProvider>(context, listen: false);

      cartProvider.addToCart(product: product);

      showCustomSnackbar(title: "Add To Cart", message: "Item added to cart");
    }

    return BigHeaderComponent(
      navName: "Go back",
      onTapNav: () => Get.back(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 18,
        ),
        decoration: const BoxDecoration(
          color: miniWhite,
          border: Border(
            top: BorderSide(
              color: lightGreyLike,
              width: 1.0,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 340,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: lightGreyLike,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: const HugeIcon(
                          icon: HugeIcons.strokeRoundedFavourite,
                          color: Colors.black,
                        ),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white, // White background
                          shape: const CircleBorder(), // Circular shape
                        ),
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        product.image,
                        width: 220,
                        height: 220,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "${product.name} ${product.size} | ${product.color}",
                style: GoogleFonts.ibmPlexSans(fontSize: 17),
              ),
              const SizedBox(height: 4),
              Text(
                "\$${product.amount}",
                style: GoogleFonts.ibmPlexSans(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About this item",
                    style: GoogleFonts.ibmPlexSans(
                      color: const Color(0xFF999999),
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '\t\t\t\u2022\t\t\t This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
                    style: GoogleFonts.ibmPlexSans(
                      color: const Color(0xFF999999),
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '\t\t\t\u2022\t\t\t There will be no visible cosmetic imperfections when held at an arm’s length. There will be no visible cosmetic imperfections when held at an arm’s length.',
                    style: GoogleFonts.ibmPlexSans(
                      color: const Color(0xFF999999),
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  CustomButtonComponent(
                    child: Text(
                      "Add to cart",
                      style: GoogleFonts.ibmPlexSans(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onTap: () => addToCart(product: product),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
