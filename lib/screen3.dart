import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class screen3 extends StatelessWidget {
  const screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/images/first.svg",
        ),
        // Image.asset('assets/images/Slider1.svg'),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Sell Here',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        const Padding(
          padding: EdgeInsets.all(40.0),
          child: Text(
            'Have a product or service to sell, list on Elegit. And grow yourself.',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(
          height: 150,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent,
              shadowColor: Colors.black,
              elevation: 5,
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: const Center(
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
