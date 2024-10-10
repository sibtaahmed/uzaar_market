// import 'package:flutter/material.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen>
//     with SingleTickerProviderStateMixin {
//   final List<String> categories = [
//     'Category 1',
//     'Category 2',
//   ];
//   late TabController _tabController;
//   int selectedTabIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: categories.length, vsync: this);
//     _tabController.addListener(() {
//       setState(() {
//         selectedTabIndex = _tabController.index;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("TabBar Example"),
//         // backgroundColor: Colors.deepPurple,
//         bottom: TabBar(
//           controller: _tabController,
//           isScrollable: true,
//           indicator: BoxDecoration(
//             gradient: const LinearGradient(
//               colors: [
//                 Colors.purple,
//                 Colors.orange,
//               ],
//             ),
//             borderRadius: BorderRadius.circular(30),
//           ),
//           labelColor: Colors.white,
//           unselectedLabelColor: Colors.grey,
//           tabs: List.generate(categories.length, (index) {
//             return Tab(
//               child: Text(categories[index]),
//             );
//           }),
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: categories.map((category) {
//           return Center(child: Text("Content for $category"));
//         }).toList(),
//       ),
//     );
//   }
// }
