import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:untitled/constant.dart';
/* TAB IMPORT */
import 'package:untitled/tabscreens/home.tab.dart';
import 'package:untitled/tabscreens/cart.tab.dart';
import 'package:untitled/tabscreens/profile.tab.dart';
import 'package:untitled/tabscreens/favorites.tab.dart';
/* MODEL IMPORT */
import 'package:untitled/models/bottom_navigation/tab_bar_item.model.dart';
/* REUSABLE BOTTOM NAVIGATION IMPORT */
import 'package:untitled/reusable_component/bottom_navigation/navbar_item.component.dart';

class CenterScreen extends StatefulWidget {
  const CenterScreen({super.key});

  @override
  State<CenterScreen> createState() => _CenterScreenState();
}

class _CenterScreenState extends State<CenterScreen> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  late Animation<double> animation;
  late Animation<double> scaleAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 200))
      ..addListener(
        () {
          setState(() {});
        },
      );
    scaleAnimation = Tween<double>(begin: 1, end: 0.8)
        .animate(CurvedAnimation(parent: _animationController, curve: Curves.fastOutSlowIn));
    animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _animationController, curve: Curves.fastOutSlowIn));

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<TabBarItemModel> tabBarItems = [
      const TabBarItemModel(
        name: "Home",
        icon: HugeIcons.strokeRoundedHome07,
        id: 0,
      ),
      const TabBarItemModel(
        name: "Cart",
        icon: HugeIcons.strokeRoundedShoppingCart01,
        id: 1,
      ),
      const TabBarItemModel(
        name: "Favorites",
        icon: HugeIcons.strokeRoundedFavourite,
        id: 2,
      ),
      const TabBarItemModel(
        name: "Profile",
        icon: HugeIcons.strokeRoundedUserCircle,
        id: 3,
      ),
    ];

    List<Widget> tabs = [
      const HomeTab(),
      const CartTab(),
      const FavoritesTab(),
      const ProfileTab(),
    ];

    return Scaffold(
      body: tabs.elementAt(_currentIndex),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0, 100 * animation.value),
        child: SafeArea(
          child: Container(
            height: 76,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  tabBarItems.length,
                  (index) => NavbarItemComponent(
                    index: index,
                    navbarItemName: tabBarItems[index].name,
                    navbarItemIcon: tabBarItems[index].icon,
                    isSelected: _currentIndex == tabBarItems[index].id,
                    onTapClick: () {
                      setState(
                        () {
                          _currentIndex = tabBarItems[index].id;
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
