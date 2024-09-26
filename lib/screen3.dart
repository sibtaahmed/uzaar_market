import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      'description': 'Welcome to the first screen! This is an amazing app.',
    },
    {
      'image': 'assets/images/first.svg',
      'description': 'Explore various features of the app in the second screen.',
    },
    {
      'image': 'assets/images/first.svg',
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
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    onboardingData[index]['image']!,
                    height: 300,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    onboardingData[index]['description']!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
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
                      color: Colors.purple,
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
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (currentPageIndex == onboardingData.length - 1) {
                      // Navigate to the next screen or finish the onboarding
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    } else {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor: Colors.purple,
                  ),
                  child: Text(
                    currentPageIndex == onboardingData.length - 1 ? 'Get Started' : 'Next',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
