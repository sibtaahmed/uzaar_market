// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Side Menu Example'),
//         leading: Builder(
//           builder: (BuildContext context) {
//             return IconButton(
//               icon: const Icon(Icons.menu), // Hamburger icon
//               onPressed: () {
//                 Scaffold.of(context).openDrawer();
//               },
//             );
//           },
//         ),
//       ),
//       drawer: const SideMenu(), // Attach the side menu
//       body: const Center(
//         child: Text(
//           'Main Content',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

// class SideMenu extends StatelessWidget {
//   const SideMenu({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // return Drawer(
//     //   child: ListView(
//     //     padding: EdgeInsets.zero,
//     //     children: <Widget>[
//     //       // Drawer header
//     //       const DrawerHeader(
//     //         decoration: BoxDecoration(
//     //           color: Colors.blue,
//     //         ),
//     //         child: Column(
//     //           crossAxisAlignment: CrossAxisAlignment.start,
//     //           children: [
//     //             CircleAvatar(
//     //               radius: 40,
//     //               backgroundImage: AssetImage('assets/images/profile.jpg'),
//     //             ),
//     //             SizedBox(height: 10),
//     //             Text(
//     //               'User Name',
//     //               style: TextStyle(
//     //                 color: Colors.white,
//     //                 fontSize: 20,
//     //               ),
//     //             ),
//     //             Text(
//     //               'username@gmail.com',
//     //               style: TextStyle(
//     //                 color: Colors.white70,
//     //                 fontSize: 14,
//     //               ),
//     //             ),
//     //           ],
//     //         ),
//     //       ),

//     //       // Menu items
//     //       ListTile(
//     //         leading: const Icon(Icons.shopping_bag),
//     //         title: const Text('My Orders'),
//     //         onTap: () {
//     //           // Navigate to My Orders screen
//     //           Navigator.pop(context);
//     //           // You can add navigation logic here
//     //         },
//     //       ),
//     //       ListTile(
//     //         leading: const Icon(Icons.contact_mail),
//     //         title: const Text('Contact Us'),
//     //         onTap: () {
//     //           // Navigate to Contact Us screen
//     //           Navigator.pop(context);
//     //           // You can add navigation logic here
//     //         },
//     //       ),
//     //       ListTile(
//     //         leading: const Icon(Icons.settings),
//     //         title: const Text('Settings'),
//     //         onTap: () {
//     //           // Navigate to Settings screen
//     //           Navigator.pop(context);
//     //           // You can add navigation logic here
//     //         },
//     //       ),
//     //       const Divider(),
//     //       ListTile(
//     //         leading: const Icon(Icons.logout),
//     //         title: const Text('Logout'),
//     //         onTap: () {
//     //           // Handle Logout
//     //           Navigator.pop(context);
//     //           // You can add logout logic here
//     //         },
//     //       ),
//     //     ],
//     //   ),
//     // );
// //   }
// // }
//   }}