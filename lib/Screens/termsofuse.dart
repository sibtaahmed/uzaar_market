import 'package:flutter/material.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Terms of Use',
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
              'Data Handling',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor '
              'in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              'System Limitations',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor '
              'in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              'Data Flow',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor '
              'in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
