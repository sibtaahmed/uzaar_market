import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/Screens/Catagories/housing_catagory.dart';
import 'package:uzaar_market/Screens/Catagories/products_catagory.dart';
import 'package:uzaar_market/Screens/Catagories/services_catagory.dart';
import 'package:uzaar_market/Screens/addProduct0.dart';
import 'package:uzaar_market/Screens/addProduct2.dart';
import 'package:uzaar_market/Screens/chats.dart';
import 'package:uzaar_market/Screens/chatscreen.dart';
import 'package:uzaar_market/Screens/addProduct1.dart';
import 'package:uzaar_market/Screens/notification.dart';
import 'package:uzaar_market/Screens/sidemenu.dart';
import 'package:uzaar_market/constants.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  Widget _buttons(String text, int index) {
    bool isSelected = _selectedIndex1 == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex1 = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        decoration: BoxDecoration(
          gradient: isSelected
              ? const LinearGradient(
                  colors: [
                    ConstantColor.primaryColor,
                    ConstantColor.orangeColor
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : null,
          color: isSelected ? null : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : ConstantColor.darkgreyColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  int _selectedIndex = 0;
  int _selectedIndex1 = 0;

  final PageController pageController = PageController(initialPage: 0);
  void changeIndex() {
    setState(() {
      // Increment the selected index and wrap around if it exceeds the number of buttons
      if (_selectedIndex1 < 3 - 1) {
        _selectedIndex1++;
      } else {
        _selectedIndex1 =
            0; // Wrap around to the first button if the last one is reached
      }
    });
  }

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
          'Sell',
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
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 10,
              ),
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    tapping = index;
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
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
                                  colors: [
                                    Colors.grey[100]!,
                                    Colors.grey[100]!
                                  ],
                                ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedTabIndex = index;
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
                          child: const Text(' '),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child:
                  getScreenForSelectedTab(), // Display screen based on selected tab
            ),

            // Next Button at the Bottom
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // If selectedTabIndex is the last, reset to the first tab
                  if (selectedTabIndex == categories.length - 1) {
                    selectedTabIndex = 0;
                  } else {
                    selectedTabIndex++; // Move to the next tab
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF450e8b),
                shadowColor: Colors.black,
                elevation: 5,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Center(
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getScreenForSelectedTab() {
    switch (selectedTabIndex) {
      case 0:
        return const Addproduct0(); // Replace with your Products screen widget
      case 1:
        return const ProductFormScreen(); // Replace with your Services screen widget
      case 2:
        return const Addproduct2(); // Replace with your Housing screen widget
      default:
        return const Addproduct0();
    }
  }

  Widget _buildOptionButton(String text, int index) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          gradient: isSelected
              ? const LinearGradient(
                  colors: [
                    ConstantColor.primaryColor,
                    ConstantColor.orangeColor
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : null,
          color: isSelected ? null : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : ConstantColor.darkgreyColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
