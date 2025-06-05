import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';
/* CONSTANT IMPORT */
import 'package:untitled/constant.dart';
/* MODEL IMPORT */
import 'package:untitled/models/content/content.model.dart';
import 'package:untitled/reusable_component/global/big_header.component.dart';
/* SUPPORT SCREEN IMPORT */
import 'package:untitled/support_screen/content_description.screen.dart';
/* REUSABLE COMPONENT IMPORT */
import 'package:untitled/reusable_component/global/header.component.dart';
import 'package:untitled/reusable_component/global/navigate_back.component.dart';
/* REUSABLE CONTENT COMPONENT IMPORT */
import 'package:untitled/reusable_component/content/content_card.component.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<ContentModel> cleanContent = [
      const ContentModel(
        id: "1",
        name: "Apple iPhone 16",
        size: "128GB",
        image: "",
        color: "Teal",
        amount: 700.00,
      ),
      const ContentModel(
        id: "2",
        name: "M4 Macbook Air 13",
        size: "256GB",
        image: "",
        color: "Sky blue",
        amount: 1000.00,
      ),
      const ContentModel(
        id: "3",
        name: "Google Pixel 9A",
        size: "128GB",
        image: "",
        color: "Iris",
        amount: 499.00,
      ),
      const ContentModel(
        id: "4",
        name: "Apple Airpods 4 Active Noise Cancellation",
        size: "128GB",
        image: "",
        color: "Teal",
        amount: 700.00,
      ),
    ];

    return SafeArea(
      child: BigHeaderComponent(
        navName: "Technology",
        onTapNav: () {},
        controller: _searchController,
        body: Expanded(
          child: Container(
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
                children: [
                  Text(
                    "Smartphones, Laptops & Accessories",
                    style: GoogleFonts.ibmPlexMono(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ResponsiveGridList(
                    scroll: false,
                    minSpacing: 10,
                    desiredItemWidth: 150,
                    children: List.generate(
                      cleanContent.length,
                      (i) {
                        var content = cleanContent[i];
                        return GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => Get.to(
                            () => ContentDescriptionScreen(content: content),
                            transition: transition,
                            duration: const Duration(milliseconds: 900),
                          ),
                          child: ContentCardComponent(content: content),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
