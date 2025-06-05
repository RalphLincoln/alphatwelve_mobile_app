import 'package:flutter/material.dart';

class AnimatedBarComponent extends StatelessWidget {
  const AnimatedBarComponent({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(bottom: 2),
      duration: const Duration(milliseconds: 200),
      height: 4,
      width: isActive ? 50 : 0,
      decoration: const BoxDecoration(
        color: Color(0xFF60B5FF),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
