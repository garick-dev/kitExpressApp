import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';

import 'package:testproject/pages/empty_cart.dart';


class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  int _selectedIndex = 0;

  @override
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /////////////////////////GLOBAL//////////////////////

  //fonts
  static const montserrat400 = "Montserrat400";
  static const montserrat500 = "Montserrat500";
  static const montserrat600 = "Montserrat600";
  static const openSans400 = "OpenSans400";
  static const openSans700 = "OpenSans700";

  //color
  static const orangeColor = Color(0xFFF49613);
  static const yellowColor = Color(0xFFFBC11D);
  static const blackColor = Color(0xFF0D0903);
  static const greyColor = Color(0xFFBDBDBD);

//letterSpacing
  static const customLetterSpacing = -0.4;

  /////////////GLOBAL////////////////////////

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Icon(
            CustomIcon.home_1,
            size: 28,
          ),
          label: "Home",
        ),
        const BottomNavigationBarItem(
          icon: Icon(CustomIcon.catalog, size: 28),
          label: 'Catalog',
        ),
        const BottomNavigationBarItem(
          icon: Icon(CustomIcon.login, size: 28),
          label: 'Login',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EmptyCart()),
              );
            },

            icon: Icon(CustomIcon.cart, size:  28,),),
          label: 'Cart',

        ),
      ],
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: orangeColor,
      unselectedItemColor: Color(0xFFA5A5A5),
      onTap: _onItemTapped,
    );
  }
}
