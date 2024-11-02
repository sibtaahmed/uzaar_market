import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomePage(),
          SearchProductScreen(),
          AddProductScreen(),
          ListProductScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
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

// chatgpt

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:uzaar_market/Screens/add_product_screen.dart';
// import 'package:uzaar_market/Screens/home.dart';
// import 'package:uzaar_market/Screens/listing_product_screen.dart';
// import 'package:uzaar_market/Screens/profile_Screen.dart';
// import 'package:uzaar_market/Screens/search_product_screen.dart';
// import 'package:uzaar_market/signup.dart';

// class Navbar extends StatefulWidget {
//   const Navbar({super.key});

//   @override
//   _NavbarState createState() => _NavbarState();
// }

// class _NavbarState extends State<Navbar> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       if (index == 2 || index == 3 || index == 4) {
//         // Check if the selected index is AddProduct, ListProduct, or Profile
//         _showGuestDialog(); // Show the dialog box
//       } else {
//         _selectedIndex = index;
//       }
//     });
//   }

//   void _showGuestDialog() {
//     showDialog(
//       context: context,
//       barrierColor: Colors.black.withOpacity(0.7),
//       builder: (BuildContext context) {
//         return Dialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16.0),
//           ),
//           child: Container(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Align(
//                   alignment: Alignment.topRight,
//                   child: GestureDetector(
//                     onTap: () => Navigator.of(context).pop(),
//                     child: const Icon(
//                       Icons.close,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 10.0),
//                 RichText(
//                   text: const TextSpan(
//                     children: [
//                       TextSpan(
//                         text: "Can not Complete",
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF5D2077),
//                         ),
//                       ),
//                       TextSpan(
//                         text: "\n Action",
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           color: Color(0xFF5D2077), // Purple color
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 30.0),
//                 const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     "You cannot sell anything on the platform in guest mode. Signup now if you want to list any item.",
//                     style: TextStyle(
//                       fontSize: 14.0,
//                       color: Colors.grey,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//                 const SizedBox(height: 30.0),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFF450e8b),
//                       shadowColor: Colors.black,
//                       elevation: 5,
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 30, vertical: 15),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => const Signup()),
//                       );
//                       // Handle the signup action here
//                     },
//                     child: const Text(
//                       "Signup",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16.0,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   void initState() {
//     super.initState();
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//       statusBarColor: Colors.white,
//       statusBarIconBrightness: Brightness.dark,
//     ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: const [
//           HomePage(),
//           SearchProductScreen(),
//           AddProductScreen(),
//           ListProductScreen(),
//           ProfileScreen(),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.white,
//         type: BottomNavigationBarType.fixed,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         showSelectedLabels: true,
//         showUnselectedLabels: true,
//         items: [
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset('assets/images/home.svg'),
//             activeIcon: SvgPicture.asset('assets/images/home1.svg'),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset('assets/images/search.svg'),
//             activeIcon: SvgPicture.asset('assets/images/search1.svg'),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset('assets/images/add.svg'),
//             activeIcon: SvgPicture.asset('assets/images/add1.svg'),
//             label: 'Add',
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset('assets/images/list01.svg'),
//             activeIcon: SvgPicture.asset('assets/images/list1.svg'),
//             label: 'List',
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset('assets/images/person.svg'),
//             activeIcon: SvgPicture.asset('assets/images/person1.svg'),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
