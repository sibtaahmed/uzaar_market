import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SellerInfo extends StatefulWidget {
  const SellerInfo({super.key});

  @override
  State<SellerInfo> createState() => _SellerInfoState();
}

class _SellerInfoState extends State<SellerInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            _buildInfoRow(
              iconPath: 'assets/images/email.svg',
              title: 'Email',
              subtitle: 'lisafernandes@gmail.com',
            ),
            _buildInfoRow(
              iconPath: 'assets/images/call.svg',
              title: 'Contact',
              subtitle: '1234345793938',
            ),
            _buildInfoRow(
              iconPath: 'assets/images/location.svg',
              title: 'Address',
              subtitle: 'Los Angeles',
            ), // Line to separate info
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required String iconPath,
    required String title,
    required String subtitle,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                iconPath,
                width: 30,
                height: 30,
              ),
              const SizedBox(width: 16), // Space between icon and text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 12), // Space between row and divider
        Divider(
          color: Colors.grey[200],
          thickness: 1, // Thickness of the divider line
          height: 1,
        ),
      ],
    );
  }
}
