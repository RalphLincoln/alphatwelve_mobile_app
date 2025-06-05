import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:google_fonts/google_fonts.dart';
/* CONSTANT IMPORT */
import 'package:untitled/constant.dart';
/* REUSABLE COMPONENT IMPORT */
import 'package:untitled/reusable_component/global/input_field.component.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key, this.onChanged, this.controller});

  final Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: const BoxDecoration(color: lightBlueLike),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                  child: Text(
                    "Full Logo",
                    style: GoogleFonts.ibmPlexSans(
                      color: darkBlueLike,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Text(
                "DELIVERY ADDRESS",
                style: GoogleFonts.ibmPlexSans(
                  color: darkGreyLike,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: HugeIcon(
                    icon: HugeIcons.strokeRoundedNotification03,
                    size: 24.0,
                    color: greyLike,
                  ),
                ),
              )
            ],
          ),
          Center(
            child: Text(
              "Umuezike Road, Oyo State ",
              style: GoogleFonts.ibmPlexSans(
                color: darkGreyLike,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 10),
          controller == null
              ? const SizedBox.shrink()
              : InputFieldComponent(
                  controller: controller!,
                  onTextChanged: onChanged,
                ),
        ],
      ),
    );
  }
}
