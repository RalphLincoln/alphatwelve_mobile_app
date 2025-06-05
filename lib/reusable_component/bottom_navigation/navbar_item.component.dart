import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:google_fonts/google_fonts.dart';
/* CONSTANTS IMPORT */
import 'package:untitled/constant.dart';
/* REUSABLE BOTTOM NAVIGATION IMPORT */
import 'package:untitled/reusable_component/bottom_navigation/animated_bar.component.dart';

class NavbarItemComponent extends StatelessWidget {
  const NavbarItemComponent({
    super.key,
    required this.navbarItemName,
    required this.navbarItemIcon,
    required this.isSelected,
    required this.onTapClick,
  });

  final bool isSelected;
  final String navbarItemName;
  final IconData navbarItemIcon;
  final VoidCallback onTapClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapClick,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedBarComponent(isActive: isSelected),
          const SizedBox(height: 5),
          HugeIcon(
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
