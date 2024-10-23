import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/Screens/chats.dart';
import 'package:uzaar_market/Screens/chatscreen.dart';
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
            // SmoothPageIndicator
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buttons('', 0),
                _buttons('', 1),
                _buttons('', 2),
              ],
            ),

            const SizedBox(height: 20),

            // Question Text
            const Text(
              "What do you want to sell?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Category Buttons for Products, Services, Housing
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildOptionButton('Products', 0),
                _buildOptionButton('Services', 1),
                _buildOptionButton('Housing', 2),
              ],
            ),
            const SizedBox(height: 30),

            // Upload Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Upload or Take Picture',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        ConstantColor.primaryColor,
                        ConstantColor.orangeColor
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      // color: Colors.grey,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SvgPicture.asset(
                        'assets/images/camera.svg',
                        height: 10,
                        width: 10,
                      ),
                    )),
              ],
            ),
            const SizedBox(height: 20),

            // Placeholder for Image Upload
            Expanded(
              child: Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: IconButton(
                    icon: SvgPicture.asset('assets/images/upload.svg'),
                    iconSize: 10,
                    onPressed: () {},
                  ),
                ),
              ),
            ),

            // Next Button at the Bottom
            ElevatedButton(
              onPressed: () {
                changeIndex();
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
