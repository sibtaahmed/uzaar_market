import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uzaar_market/Screens/Catagories/housing_catagory.dart';
import 'package:uzaar_market/Screens/Catagories/products_catagory.dart';
import 'package:uzaar_market/Screens/Catagories/services_catagory.dart';
import 'package:uzaar_market/Screens/chats.dart';
import 'package:uzaar_market/Screens/chatscreen.dart';
import 'package:uzaar_market/Screens/notification.dart';
import 'package:uzaar_market/Screens/sidemenu.dart';
import 'package:uzaar_market/constants.dart';

// // Assuming the 'constants.dart' file defines this class
// class ConstantColor {
//   static const Color primaryColor = Colors.purple;
//   static const Color orangeColor = Colors.orange;
//   static const Color lightgreyColor = Colors.grey;
// }

class SearchProductScreen extends StatefulWidget {
  const SearchProductScreen({super.key});

  @override
  State<SearchProductScreen> createState() => _SearchProductScreenState();
}

class _SearchProductScreenState extends State<SearchProductScreen> {
  final List<String> categories = [
    'Products',
    'Services',
    'Housing',
  ];
  int selectedTabIndex = 0;
  int tapping = 0;
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
          'Explore',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/images/chat.svg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatList(),
                ),
              );
            },
          ),
          IconButton(
            icon: SvgPicture.asset('assets/images/bell.svg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const notification(),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Category Tabs
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                        child: Text(categories[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 4),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search here',
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                  ),
                  prefixIcon: IconButton(
                    icon: SvgPicture.asset('assets/images/search.svg'),
                    onPressed: () {},
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: ConstantColor.lightgreyColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: ConstantColor.lightgreyColor,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              child:
                  getScreenForSelectedTab(), // Display screen based on selected tab
            ),
          ],
        ),
      ),
    );
  }

  Widget getScreenForSelectedTab() {
    switch (selectedTabIndex) {
      case 0:
        return const ProductCatagory(); // Replace with your Products screen widget
      case 1:
        return const ServicesCatagory(); // Replace with your Services screen widget
      case 2:
        return const HousingCatagory(); // Replace with your Housing screen widget
      default:
        return const ProductCatagory();
    }
  }
}
