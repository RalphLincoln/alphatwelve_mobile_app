import 'package:flutter/material.dart';
/* CONSTANT IMPORT */
import 'package:untitled/constant.dart';

class CustomButtonComponent extends StatelessWidget {
  const CustomButtonComponent({super.key, required this.child, required this.onTap});

  final Widget child;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        decoration: BoxDecoration(
          color: lightBlueLike,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
