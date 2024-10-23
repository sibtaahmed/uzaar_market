import 'package:flutter/material.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        // centerTitle: true,
        backgroundColor: Colors.white, // You can adjust the color as needed
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Who We Are',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              'What We Do',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation.Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation. ',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              'Overall Company Profile',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. ',
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
