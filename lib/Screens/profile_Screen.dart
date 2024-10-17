// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:uzaar_market/Screens/Personalinfo.dart';
// import 'package:uzaar_market/Screens/Reviews.dart';
// import 'package:uzaar_market/constants.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   final List<String> categories = [
//     'Personal Info',
//     'Reviews',
//     // 'Housing',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//           backgroundColor: Colors.white,
//           appBar: AppBar(
//             forceMaterialTransparency: true,
//             elevation: 0,
//             leading: IconButton(
//               icon: SvgPicture.asset('assets/images/menu.svg'),
//               onPressed: () {},
//             ),
//             title: const Text(
//               'Profile',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//             ),
//             actions: [
//               IconButton(
//                 icon: SvgPicture.asset('assets/images/chat.svg'),
//                 onPressed: () {},
//               ),
//               IconButton(
//                 icon: SvgPicture.asset('assets/images/bell.svg'),
//                 onPressed: () {},
//               ),
//             ],
//           ),
//           body: Column(
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
// Row(
//   mainAxisAlignment: MainAxisAlignment.end,
//   children: [
//     Container(
//       width: 60,
//       height: 30,
//       decoration: const BoxDecoration(
//         shape: BoxShape.circle,
//         gradient: LinearGradient(
//           colors: [
//             ConstantColor.primaryColor,
//             ConstantColor.orangeColor
//           ],
//         ),
//       ),
//       child: IconButton(
//         onPressed: () {
//           // Edit button functionality
//         },
//         icon: SvgPicture.asset(
//           'assets/images/editicon.svg', // Path to your SVG file
//           color: Colors.white,
//         ),
//       ),
//     )
//   ],
// ),
// Center(
//   child: Stack(
//     children: [
//       Container(
//           height: 120,
//           width: 120,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(100),
//             border: Border.all(color: Colors.grey),
//           ),
//           child: Image.asset(
//             'assets/images/lisa1.png',
//             // height: 80,
//           )),
//       Positioned(
//         bottom: 0,
//         right: 0,
//         child: Container(
//             height: 30,
//             width: 30,
//             decoration: BoxDecoration(
//               gradient: const LinearGradient(
//                   colors: [
//                     ConstantColor.primaryColor,
//                     ConstantColor.orangeColor
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight),
//               color: Colors.grey,
//               borderRadius: BorderRadius.circular(100),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(3.0),
//               child: SvgPicture.asset(
//                 'assets/images/camera.svg',
//                 height: 20,
//                 width: 20,
//               ),
//             )),
//       ),
//     ],
//   ),
// ),
//  const Text(
//   'Apply for Verification',
//   style: TextStyle(
//     fontWeight: FontWeight.bold,
//     color: Colors.deepPurple,
//     fontSize: 18,
//   ),
// ),
// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: List.generate(5, (index) {
//     return const Icon(
//       Icons.star,
//       color: Colors.amber,
//       size: 25,
//     );
//   }),
// ),
// const Padding(
//   padding: EdgeInsets.all(8.0),
//   child: Text(
//     '(14)',
//     style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//   ),
// ),
//               // buttons
//                         Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: Colors.grey.shade200,
//               ),
//               padding: const EdgeInsets.all(8.0),
//               child: TabBar(
//                 // controller: _tabController,
//                 indicator: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   gradient: const LinearGradient(
//                     colors: [Colors.orange, Colors.purple],
//                   ),
//                 ),
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.grey,
//                 tabs: const [
//                   Tab(text: 'Personal Info'),
//                   Tab(text: 'Reviews'),
//                 ],
//               ),
//             ),
//                 // Expanded TabBarView to display content for the selected tab
//          const Expanded(
//                       child: TabBarView(
//                         physics: ScrollPhysics(),
//                         //physics: NeverScrollableScrollPhysics(),
//                         // physics: AlwaysScrollableScrollPhysics(),
//                         // controller: _tabController,
//                         children: [
//                           PersonalInfo(),
//                           Reviews(),
//                         ],
//                       ),
//                     ),
//             ],
//           )),
//     );
//   }
// }
// //   Widget getScreenForSelectedTab() {
// //     switch (selectedTabIndex) {
// //       case 0:
// //         return const PersonalInfo(); // Replace with your Products screen widget
// //       case 1:
// //         return const Reviews(); // Replace with your Services screen widget
// //       default:
// //         return const PersonalInfo();
// //     }
// //   }
// // }

// day2

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/Screens/Personalinfo.dart';
import 'package:uzaar_market/Screens/Reviews.dart';
import 'package:uzaar_market/Screens/chatscreen.dart';
import 'package:uzaar_market/Screens/editprofile.dart';
import 'package:uzaar_market/Screens/sidemenu.dart';
import 'package:uzaar_market/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> categories = [
    'Profile info',
    'Reviews',
  ];
  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const SideMenu(),
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: SvgPicture.asset('assets/images/menu.svg'),
            onPressed: () {
              Scaffold.of(context).openDrawer();
              print('Menu button pressed');
            },
          );
        }),
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/images/chat.svg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: SvgPicture.asset('assets/images/bell.svg'),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 60,
                  height: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        ConstantColor.primaryColor,
                        ConstantColor.orangeColor
                      ],
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfile(),
                        ),
                      );
                      // Edit button functionality
                    },
                    icon: SvgPicture.asset(
                      'assets/images/editicon.svg', // Path to your SVG file
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Image.asset(
                        'assets/images/lisa1.png',
                        // height: 80,
                      )),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [
                                ConstantColor.primaryColor,
                                ConstantColor.orangeColor
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SvgPicture.asset(
                            'assets/images/camera.svg',
                            height: 70,
                            width: 90,
                          ),
                        )),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: SizedBox(
                        height: 30,
                        width: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SvgPicture.asset(
                            'assets/images/verify.svg',
                          ),
                        )),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Apply for Verification',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 25,
                );
              }),
            ),
            const Text(
              '(14)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            // Category Tabs
            SizedBox(
              width: 356,
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 45, top: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: index == selectedTabIndex
                            ? const LinearGradient(
                                colors: [
                                  ConstantColor.primaryColor,
                                  ConstantColor.orangeColor
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )
                            : LinearGradient(
                                colors: [Colors.grey[100]!, Colors.grey[100]!],
                              ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedTabIndex =
                                index; // Update the selected tab index
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          foregroundColor: index == selectedTabIndex
                              ? Colors.white
                              : ConstantColor.darkgreyColor,
                        ),
                        child: Text(
                          categories[index],
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height - 306,
              child: getScreenForSelectedTab(),
            ),
          ],
        ),
      ),
    );
  }

  Widget getScreenForSelectedTab() {
    switch (selectedTabIndex) {
      case 0:
        return const PersonalInfo(); // Replace with your Products screen widget
      case 1:
        return const ReviewScreen(); // Replace with your Services screen widget
      // case 2:
      //   return const HousingCatagory(); // Replace with your Housing screen widget
      default:
        return const PersonalInfo();
    }
  }
}
