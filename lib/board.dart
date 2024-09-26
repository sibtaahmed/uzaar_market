

import 'package:flutter/material.dart';
import 'package:uzaar_market/screen1.dart';
import 'package:uzaar_market/screen2.dart';
import 'package:uzaar_market/screen3.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class boarding extends StatefulWidget {
  const boarding({super.key});

  @override
  State<boarding> createState() => _boardingState();
}

class _boardingState extends State<boarding> {
  PageController pageController = PageController();
  String buttonText = 'Next';
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentPageIndex = index;
                buttonText = (index == 3) ? 'Finish' : 'Next';
              });
            },
            children: const [screen1(), screen2(), screen3(), ],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    pageController.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: const Text("Back",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
                // const SizedBox(
                //   width: 2,
                // ),
                // SmoothPageIndicator(controller: pageController, count: 4),
                // GestureDetector(
                //   onTap: () {
                //     if (currentPageIndex == 3) {
                //       // Action when "Finish" is pressed, e.g., navigate to another page
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const ()),
                //       );
                //     } else {
                //       pageController.nextPage(
                //         duration: const Duration(milliseconds: 500),
                //         curve: Curves.easeIn,
                //       );
                //     }
                //   },
                //   child: Text(
                //     buttonText,
                //     style: const TextStyle(fontWeight: FontWeight.bold),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
