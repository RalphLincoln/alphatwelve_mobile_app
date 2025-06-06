import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
/* CONSTANT IMPORT */
import 'package:untitled/constant.dart';
/* PROVIDER IMPORT */
import 'package:untitled/provider/cart.provider.dart';
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
    final cartProvider = context.watch<CartProvider>();

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
                          cartProvider.carts.length,
                          (i) {
                            var cart = cartProvider.carts[i];
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
                  PriceRowListComponent(
                    title: "Subtotal",
                    amount: cartProvider.totalPrice.toString(),
                    isTotalAmount: false,
                  ),
                  const SizedBox(height: 10),
                  PriceRowListComponent(
                    title: "Shipping",
                    amount: cartProvider.shipping.toString(),
                    isTotalAmount: false,
                  ),
                  const SizedBox(height: 12),
                  PriceRowListComponent(
                    title: "Total",
                    amount: cartProvider.grossPrice.toString(),
                    isTotalAmount: true,
                  ),
                  const SizedBox(height: 20),
                  CustomButtonComponent(
                    child: Text(
                      "Checkout (\$${cartProvider.grossPrice})",
                      style: GoogleFonts.ibmPlexSans(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onTap: () {},
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
