import 'package:building_buddy/utils/styling.dart';
import 'package:building_buddy/view/screens/elite_program_screen.dart';
import 'package:building_buddy/view/screens/home_screen.dart';
import 'package:building_buddy/view/screens/login_screen.dart';
import 'package:building_buddy/view/screens/menu_screen.dart';
import 'package:building_buddy/view/screens/signup_screen.dart';
import 'package:building_buddy/view/screens/verification_screen.dart';
import 'package:building_buddy/view/screens/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigation_Screen extends StatefulWidget {
  const BottomNavigation_Screen({Key? key}) : super(key: key);

  @override
  State<BottomNavigation_Screen> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation_Screen> {
  int index = 0;
  final screens = [
    HomeScreen(),
    VerificationScreen(),
    WishlistScreen(),
    EliteProgramScreen(),
    MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.transparent,
        ),
        child: NavigationBar(
          height: 60.h,
          backgroundColor: Colors.white,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
                icon: ImageIcon(
                  AssetImage('assets/images/home.png'),
                  color: AppTheme.appColor,
                ),
                selectedIcon: ImageIcon(
                  AssetImage('assets/images/home.png'),
                  color: AppTheme.appColor3,
                ),
                label: 'Home'),
            NavigationDestination(
                icon: ImageIcon(
                  AssetImage('assets/images/cart.png'),
                  color: AppTheme.appColor,
                ),
                selectedIcon: ImageIcon(
                  AssetImage('assets/images/cart.png'),
                  color: AppTheme.appColor3,
                ),
                label: 'Cart'),
            NavigationDestination(
                icon: ImageIcon(
                  AssetImage('assets/images/favourite.png'),
                  color: AppTheme.appColor,
                ),
                selectedIcon: ImageIcon(
                  AssetImage('assets/images/favourite.png'),
                  color: AppTheme.appColor3,
                ),
                label: 'Favourite'),
            NavigationDestination(
                icon: ImageIcon(
                  AssetImage('assets/images/van.png'),
                  color: AppTheme.appColor,
                ),
                selectedIcon: ImageIcon(
                  AssetImage('assets/images/van.png'),
                  color: AppTheme.appColor3,
                ),
                label: 'Track'),
            NavigationDestination(
                icon: ImageIcon(
                  AssetImage('assets/images/menu.png'),
                  color: AppTheme.appColor,
                ),
                selectedIcon: ImageIcon(
                  AssetImage('assets/images/menu.png'),
                  color: AppTheme.appColor3,
                ),
                label: 'Menu'),
          ],
        ),
      ),
    );
  }
}
