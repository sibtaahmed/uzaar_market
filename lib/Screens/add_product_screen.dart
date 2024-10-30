import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uzaar_market/Screens/Catagories/housing_catagory.dart';
import 'package:uzaar_market/Screens/Catagories/products_catagory.dart';
import 'package:uzaar_market/Screens/Catagories/services_catagory.dart';
import 'package:uzaar_market/Screens/HousingCategory1.dart';
import 'package:uzaar_market/Screens/HousingCategory2.dart';
import 'package:uzaar_market/Screens/HousingCategory3.dart';
import 'package:uzaar_market/Screens/ServiceCategory1.dart';
import 'package:uzaar_market/Screens/ServiceCategory2.dart';
import 'package:uzaar_market/Screens/ServiceCategory3.dart';
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
  int selectedTabIndex = 0;
  int currentPageIndex = 0;
  PageController pageController = PageController();

  final List<String> categories = [
    'Product',
    'Service',
    'Housing',
  ];

  final List<List<Widget>> categoryPages = [
    [const Addproduct0(), const ProductFormScreen(), const Addproduct2()],
    [
      const ServiceCategory1(),
      const ServiceCategory2(),
      // const ServiceCategory3()
    ],
    [
      const HousingCategory1(),
      const HousingCategory2(),
      // const HousingCategory3()
    ],
  ];

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
            // Category Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(categories.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTabIndex = index;
                      pageController.jumpToPage(0); // Reset to first page
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      gradient: index == selectedTabIndex
                          ? const LinearGradient(
                              colors: [
                                ConstantColor.primaryColor,
                                ConstantColor.orangeColor,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )
                          : LinearGradient(
                              colors: [
                                Colors.grey[100]!,
                                Colors.grey[100]!,
                              ],
                            ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      categories[index],
                      style: TextStyle(
                        color: index == selectedTabIndex
                            ? Colors.white
                            : ConstantColor.darkgreyColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 16),

            // Smooth Page Indicator
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: categoryPages[selectedTabIndex].length,
                  effect: CustomizableEffect(
                    activeDotDecoration: DotDecoration(
                      width: 40,
                      height: 15,
                      borderRadius: BorderRadius.circular(50),
                      color: ConstantColor.primaryColor,
                      dotBorder: const DotBorder(
                        color: Colors.transparent,
                        width: 0,
                      ),
                      // Removed paintStyle parameter
                      // Applying gradient to the active dot
                    ),
                    dotDecoration: DotDecoration(
                      width: 40,
                      height: 15,
                      color: Colors.grey[200]!,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    spacing: 8,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // PageView for Category Pages
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: categoryPages[selectedTabIndex].length,
                onPageChanged: (index) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
                itemBuilder: (context, pageIndex) {
                  return categoryPages[selectedTabIndex][pageIndex];
                },
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (currentPageIndex ==
                      categoryPages[selectedTabIndex].length - 1) {
                    // Navigate to the next screen or finish the onboarding
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const Signup()),
                    // );
                  } else {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: ConstantColor.primaryColor,
                ),
                child: Text(
                  currentPageIndex == categoryPages[selectedTabIndex].length - 1
                      ? 'Continue'
                      : 'Next',
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
