import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          label: "Home", icon: ImageIcon(AssetImage("assets/images/home.png"))),
      BottomNavigationBarItem(
          label: "Favorites",
          icon: ImageIcon(
            AssetImage("assets/images/heart.png"),
            color: Colors.black,
          )),
      BottomNavigationBarItem(
          label: "My Cart",
          icon: ImageIcon(
            AssetImage("assets/images/shopping-cart.png"),
            color: Colors.black,
          )),
      BottomNavigationBarItem(
          label: "Profile",
          icon: ImageIcon(
            AssetImage("assets/images/profile-circle.png"),
            color: Colors.black,
          )),
    ]);
  }
}
