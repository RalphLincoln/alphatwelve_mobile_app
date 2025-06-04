import 'package:flutter/material.dart';

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
  final Widget navbarItemIcon;
  final VoidCallback onTapClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapClick,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          navbarItemIcon,
          Text(
            navbarItemName,
            style: TextStyle(
              color: isSelected ? const Color(0xFF60B5FF) : Colors.black,
              fontSize: 10,
              fontFamily: "Poppins-Regular",
            ),
          ),
        ],
      ),
    );
  }
}
