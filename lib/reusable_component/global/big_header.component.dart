import 'package:flutter/material.dart';
/* REUSABLE COMPONENT IMPORT */
import 'package:untitled/reusable_component/global/header.component.dart';
import 'package:untitled/reusable_component/global/navigate_back.component.dart';

class BigHeaderComponent extends StatelessWidget {
  const BigHeaderComponent({
    super.key,
    required this.body,
    required this.navName,
    required this.onTapNav,
    this.onChanged,
    this.controller,
  });

  final Widget body;
  final String navName;
  final Function() onTapNav;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HeaderComponent(
          onChanged: onChanged,
          controller: controller,
        ),
        const SizedBox(height: 10),
        const Divider(color: Colors.grey),
        NavigateBackComponent(
          name: navName,
          onTap: onTapNav,
        ),
        const SizedBox(height: 6),
        body
      ],
    );
  }
}
