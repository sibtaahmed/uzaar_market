import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uzaar_market/Screens/model/housing_model.dart';
import 'package:uzaar_market/constants.dart';

// // Assuming the 'constants.dart' file defines this class
// class ConstantColor {
//   static const Color primaryColor = Colors.purple;
//   static const Color orangeColor = Colors.orange;
//   static const Color lightgreyColor = Colors.grey;
// }

class HousingCatagory extends StatefulWidget {
  const HousingCatagory({super.key});

  @override
  State<HousingCatagory> createState() => _HousingCatagoryState();
}

class _HousingCatagoryState extends State<HousingCatagory> {
  final List<Map<String, dynamic>> items = [
    {
      'text': 'Category',
      'isFilled': true,
    },
    {
      'text': 'New',
      'isFilled': true,
    },
    {
      'text': 'Price',
      'isFilled': false,
    },
    {
      'text': 'Location',
      'isFilled': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
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
            // Filter Chips
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: items.map((item) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 155,
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(color: ConstantColor.primaryColor),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  item['isFilled']
                                      ? 'assets/images/tickF.svg'
                                      : 'assets/images/tick.svg',
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  item['text'],
                                  style: const TextStyle(
                                    color: ConstantColor.primaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 13),
                            child: SvgPicture.asset(
                              'assets/images/arrowdown.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            // Product Grid
            const SizedBox(height: 16),
            SizedBox(
              height: 500, // Set a fixed height for the GridView
              child: GridView.builder(
                physics:
                    const NeverScrollableScrollPhysics(), // Disable GridView scrolling
                itemCount: housing.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return HousingCard(housing: housing[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  //   Widget getScreenForSelectedTab() {
  //   switch (selectedTabIndex) {
  //     case 0:
  //       return ProductsScreen(); // Replace with your Products screen widget
  //     case 1:
  //       return ServicesScreen(); // Replace with your Services screen widget
  //     case 2:
  //       return HousingScreen(); // Replace with your Housing screen widget
  //     default:
  //       return ProductsScreen();
  //   }
  // }
}
