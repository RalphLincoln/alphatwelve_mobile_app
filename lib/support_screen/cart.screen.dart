import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
/* CONSTANT IMPORT */
import 'package:untitled/constant.dart';
/* MODEL IMPORT */
import 'package:untitled/models/cart/cart.model.dart';
import 'package:untitled/models/product/product.model.dart';
/* REUSABLE CART COMPONENT IMPORT */
import 'package:untitled/reusable_component/cart/cart_item.component.dart';
import 'package:untitled/reusable_component/cart/price_row_list.component.dart';
/* REUSABLE COMPONENT IMPORT */
import 'package:untitled/reusable_component/global/big_header.component.dart';
import 'package:untitled/reusable_component/global/custom_button.component.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CartModel> cleanCart = [
      const CartModel(
        product: ProductModel(
          id: "1",
          name: "Apple iPhone 16",
          size: "128GB",
          image: "assets/image/iphone16.jpg",
          color: "Teal",
          amount: 700.00,
        ),
        quantity: 1,
      ),
      const CartModel(
        product: ProductModel(
          id: "2",
          name: "M4 Macbook Air 13",
          size: "256GB",
          image: "assets/image/macbook-air-13.png",
          color: "Sky blue",
          amount: 1000.00,
        ),
        quantity: 1,
      ),
    ];
    return BigHeaderComponent(
      navName: "Your Cart",
      onTapNav: () => Get.back(),
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: miniWhite,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 15,
                      ),
                      child: Column(
                        children: List.generate(
                          cleanCart.length,
                          (i) {
                            var cart = cleanCart[i];
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: CartItemComponent(cart: cart),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order Info",
                    style: GoogleFonts.ibmPlexSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const PriceRowListComponent(title: "Subtotal", amount: "2100", isTotalAmount: false),
                  const SizedBox(height: 10),
                  const PriceRowListComponent(title: "Shipping", amount: "10", isTotalAmount: false),
                  const SizedBox(height: 12),
                  const PriceRowListComponent(title: "Total", amount: "2110", isTotalAmount: true),
                  const SizedBox(height: 20),
                  CustomButtonComponent(
                    child: Text(
                      "Checkout (\$2110)",
                      style: GoogleFonts.ibmPlexSans(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onTap: () => Get.to(
                      () => const CartScreen(),
                      transition: transition,
                      duration: const Duration(milliseconds: 900),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
