import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uzaar_market/constants.dart';
import 'package:uzaar_market/signup.dart';

class Boarding extends StatefulWidget {
  const Boarding({super.key});

  @override
  State<Boarding> createState() => _BoardingState();
}

class _BoardingState extends State<Boarding> {
  PageController pageController = PageController();
  int currentPageIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      'image': 'assets/images/first.svg',
      'title': "Sell Here",
      'description':
          'Have a product or service to sell, list on Elegit. And grow yourself.',
    },
    {
      'image': 'assets/images/first.svg',
      'title': "Buy Goods and Services",
      'description':
          'Explore various features of the app in the second screen.',
    },
    {
      'image': 'assets/images/first.svg',
      'title': "Seller Location Verification",
      'description': 'Get started with your journey in the third screen.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: onboardingData.length,
            onPageChanged: (index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 110),
                        child: SvgPicture.asset(
                          onboardingData[index]['image']!,
                        ),
                      ),
                      const SizedBox(height: 90),
                      Text(
                        onboardingData[index]['title']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Text(
                        onboardingData[index]['description']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          // fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: onboardingData.length,
                  effect: CustomizableEffect(
                    activeDotDecoration: DotDecoration(
                      width: 40,
                      height: 15,
                      color: ConstantColor.primaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    dotDecoration: DotDecoration(
                      width: 40,
                      height: 15,
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    spacing: 8,
                  ),
                ),
                const SizedBox(height: 90),
                ElevatedButton(
                  onPressed: () {
                    if (currentPageIndex == onboardingData.length - 1) {
                      // Navigate to the next screen or finish the onboarding
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );
                    } else {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 140, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor: ConstantColor.primaryColor,
                  ),
                  child: Text(
                    currentPageIndex == onboardingData.length - 1
                        ? 'Continue'
                        : 'Next',
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
