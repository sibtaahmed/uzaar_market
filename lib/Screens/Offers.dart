import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/constants.dart';

class OffersList extends StatelessWidget {
  const OffersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Add the Row above the list of cards (once)
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Product',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey[100]!, width: 2),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Products',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: ConstantColor.primaryColor,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          // List of offers (cards)
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: 4, // The number of product items
              itemBuilder: (context, index) {
                // Set the status based on the card index
                String offerStatus;
                if (index == 0) {
                  offerStatus = 'accepted';
                } else if (index == 1 || index == 3) {
                  offerStatus = 'pending';
                } else {
                  offerStatus = 'rejected';
                }
                return OffersCard(offerStatus: offerStatus);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OffersCard extends StatelessWidget {
  final String offerStatus; // The status of the offer

  const OffersCard({super.key, required this.offerStatus});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/phone.png',
                height: 80,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            // Product Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Product Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/location.svg",
                        width: 38,
                        height: 15,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Los Angeles',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/tag.svg",
                        width: 38,
                        height: 15,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '\$12',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    children: [
                      Text(
                        '\$12',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Offered',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '08/08/2023',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  // Status container with dynamic color and bold text
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 3.0),
                    decoration: BoxDecoration(
                      color: _getButtonColor(), // Dynamic color based on status
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            _getButtonText(), // Dynamic text based on status
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold, // Bold text style
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Function to return the button text based on the offer status
  String _getButtonText() {
    switch (offerStatus) {
      case 'accepted':
        return 'Accepted';
      case 'pending':
        return 'Pending';
      case 'rejected':
      default:
        return 'Rejected';
    }
  }

  // Function to return the button color based on the offer status
  Color _getButtonColor() {
    switch (offerStatus) {
      case 'accepted':
        return const Color(0xFF00D796);
      case 'pending':
        return const Color(0xFFFEBC5A);
      case 'rejected':
      default:
        return const Color(0xFFFB4B40);
    }
  }
}
