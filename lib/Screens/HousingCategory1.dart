import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/constants.dart';

class HousingCategory1 extends StatefulWidget {
  const HousingCategory1({super.key});

  @override
  State<HousingCategory1> createState() => _HousingCategory1State();
}

class _HousingCategory1State extends State<HousingCategory1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 20),

          // Question Text

          // Category Buttons for Products, Services, Housing
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     _buildOptionButton('Products', 0),
          //     _buildOptionButton('Services', 1),
          //     _buildOptionButton('Housing', 2),
          //   ],
          // ),
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
        ],
      ),
    );
  }
}
