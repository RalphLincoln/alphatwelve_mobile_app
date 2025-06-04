import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DisplaySVGComponent extends StatelessWidget {
  const DisplaySVGComponent({
    super.key,
    required this.height,
    required this.width,
    required this.icon,
    this.color,
  });

  final String icon;
  final Color? color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SvgPicture.asset(
        icon,
        width: width,
        height: height,
        colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      ),
    );
  }
}
