import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uzaar_market/Screens/Catagories/housing_catagory.dart';
import 'package:uzaar_market/Screens/Catagories/housing_list.dart';
import 'package:uzaar_market/Screens/Catagories/product_list.dart';
import 'package:uzaar_market/Screens/Catagories/products_catagory.dart';
import 'package:uzaar_market/Screens/Catagories/service_list.dart';
import 'package:uzaar_market/Screens/Catagories/services_catagory.dart';
import 'package:uzaar_market/constants.dart';

// // Assuming the 'constants.dart' file defines this class
// class ConstantColor {
//   static const Color primaryColor = Colors.purple;
//   static const Color orangeColor = Colors.orange;
//   static const Color lightgreyColor = Colors.grey;
// }

class ListProductScreen extends StatefulWidget {
  const ListProductScreen({super.key});

  @override
  State<ListProductScreen> createState() => _ListProductScreenState();
}

class _ListProductScreenState extends State<ListProductScreen> {
  final List<String> categories = [
    'Products',
    'Services',
    'Housing',
  ];
  int selectedTabIndex = 0;
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
          'Listings',
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
                                colors: [Colors.grey[300]!, Colors.grey[300]!],
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
                              : Colors.grey,
                        ),
                        child: Text(categories[index]),
                      ),
                    ),
                  );
                },
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
        return ProductList(); // Replace with your Products screen widget
      case 1:
        return const ServiceList(); // Replace with your Services screen widget
      case 2:
        return  HouseList(); // Replace with your Housing screen widget
      default:
        return ProductList();
    }
  }
}
