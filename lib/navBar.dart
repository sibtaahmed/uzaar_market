import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uzaar_market/Screens/add_product_screen.dart';
import 'package:uzaar_market/Screens/home.dart';
import 'package:uzaar_market/Screens/listing_product_screen.dart';
import 'package:uzaar_market/Screens/profile_Screen.dart';
import 'package:uzaar_market/Screens/search_product_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomePage(),
          const SearchProductScreen(),
          const AddProductScreen(),
          const ListProductScreen(),
          const ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/home.svg',
                // color: Colors.black,
              ),
              activeIcon: SvgPicture.asset(
                'assets/images/home1.svg',
                // color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/search.svg',
                // color: Colors.black,
              ),
              activeIcon: SvgPicture.asset(
                'assets/images/search1.svg',
                // color: Colors.black,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/add.svg',
                // color: Colors.black,
              ),
              activeIcon: SvgPicture.asset(
                'assets/images/add1.svg',
                // color: Colors.black,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/list01.svg',
                // color: Colors.black,
              ),
              activeIcon: SvgPicture.asset(
                'assets/images/list1.svg',
                // color: Colors.black,p
              ),
              label: 'List',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/person.svg',
                // color: Colors.black,
              ),
              activeIcon: SvgPicture.asset(
                'assets/images/person1.svg',
                // color: Colors.black,
              ),
              label: 'Profile',
            ),
          ]),
    );
  }
}
