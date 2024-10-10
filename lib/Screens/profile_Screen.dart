import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/Screens/Personalinfo.dart';
import 'package:uzaar_market/Screens/Reviews.dart';
import 'package:uzaar_market/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> categories = [
    'Personal Info',
    'Reviews',
    // 'Housing',
  ];
  // late TabController _tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   // Initialize the TabController with 2 tabs
  //   _tabController = TabController(length: 2, vsync: this);
  // }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          forceMaterialTransparency: true,
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset('assets/images/menu.svg'),
            onPressed: () {},
          ),
          title: const Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          actions: [
            IconButton(
              icon: SvgPicture.asset('assets/images/chat.svg'),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset('assets/images/bell.svg'),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
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
                            height: 20,
                            width: 20,
                          ),
                        )),
                  ),
                ],
              ),
            ),
             const Text(
              'Apply for Verification',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
                fontSize: 18,
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '(14)',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            // buttons
                      Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade200,
            ),
            padding: const EdgeInsets.all(8.0),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: [Colors.orange, Colors.purple],
                ),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(text: 'Personal Info'),
                Tab(text: 'Reviews'),
              ],
            ),
          ),
              // Expanded TabBarView to display content for the selected tab
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                // Content for Personal Info Tab
                Center(child: Text('Personal Info Content')),
                // Content for Reviews Tab
                Center(child: Text('Reviews Content')),
              ],
            ),
          ),
          ],
        ));
  }
}
//   Widget getScreenForSelectedTab() {
//     switch (selectedTabIndex) {
//       case 0:
//         return const PersonalInfo(); // Replace with your Products screen widget
//       case 1:
//         return const Reviews(); // Replace with your Services screen widget
//       default:
//         return const PersonalInfo();
//     }
//   }
// }

// chatgpt


