import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:google_fonts/google_fonts.dart';
/* CONSTANTS IMPORT */
import 'package:untitled/constant.dart';
/* PROVIDER IMPORT */
import 'package:untitled/provider/cart.provider.dart';
/* REUSABLE BOTTOM NAVIGATION IMPORT */
import 'package:untitled/reusable_component/bottom_navigation/animated_bar.component.dart';

class NavbarItemComponent extends StatelessWidget {
  const NavbarItemComponent({
    super.key,
    required this.index,
    required this.navbarItemName,
    required this.navbarItemIcon,
    required this.isSelected,
    required this.onTapClick,
  });

  final int index;
  final bool isSelected;
  final String navbarItemName;
  final IconData navbarItemIcon;
  final VoidCallback onTapClick;

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);

    return GestureDetector(
      onTap: onTapClick,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedBarComponent(isActive: isSelected),
          const SizedBox(height: 5),
          index == 1
              ? Stack(
                  children: [
                    HugeIcon(
                      icon: navbarItemIcon,
                      color: isSelected ? lightBlueLike : greyLike,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 4,
                      ),
                      decoration: BoxDecoration(
                        color: lightBlueLike,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "${cartProvider.carts.length}",
                          style: GoogleFonts.ibmPlexSans(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              : HugeIcon(
                  icon: navbarItemIcon,
                  color: isSelected ? lightBlueLike : greyLike,
                ),
          const SizedBox(height: 6),
          Text(
            navbarItemName,
            style: GoogleFonts.ibmPlexSans(
              color: isSelected ? lightBlueLike : greyLike,
              fontSize: 11,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
