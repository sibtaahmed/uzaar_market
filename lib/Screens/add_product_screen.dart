import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uzaar_market/constants.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/images/menu.svg'),
          onPressed: () {
            // Handle menu click
          },
        ),
        title: const Text(
          'Sell',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/images/chat.svg'),
            onPressed: () {
              // Handle chat click
            },
          ),
          IconButton(
            icon: SvgPicture.asset('assets/images/bell.svg'),
            onPressed: () {
              // Handle notifications click
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
            Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3, // Set count based on the number of screens/pages
                effect: CustomizableEffect(
                  activeDotDecoration: DotDecoration(
                    width: 40,
                    height: 15,
                    color:
                        ConstantColor.primaryColor, // Use a single color here
                    borderRadius: BorderRadius.circular(50),
                  ),
                  dotDecoration: DotDecoration(
                    width: 40,
                    height: 15,
                    color: Colors.grey[100]!,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  spacing: 8,
                ),
              ),
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const Navbar(),
                //     ));
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
