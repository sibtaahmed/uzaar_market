import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/constants.dart';

class PreviousList extends StatelessWidget {
  const PreviousList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 4, // The number of product items
        itemBuilder: (context, index) {
          // Pass a different status for each card for testing purposes
          String offerStatus;
          if (index == 0) {
            offerStatus = 'accepted';
          } else if (index == 1) {
            offerStatus = 'pending';
          } else {
            offerStatus = 'rejected';
          }
          return PreviousCard(offerStatus: offerStatus);
        },
      ),
    );
  }
}

class PreviousCard extends StatelessWidget {
  final String offerStatus; // The status of the offer

  const PreviousCard({super.key, required this.offerStatus});

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
              height: 110,
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          _getButtonColor(), // Call the function to set the color
                      shadowColor: Colors.black,
                      elevation: 5,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        _getButtonText(), // Call the function to set the text
                        style:
                            const TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  )
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
        return 'ACCEPTED';
      case 'pending':
        return 'PENDING';
      case 'rejected':
      default:
        return 'REJECTED';
    }
  }

  // Function to return the button color based on the offer status
  Color _getButtonColor() {
    switch (offerStatus) {
      case 'accepted':
        return Colors.green;
      case 'pending':
        return Colors.orange;
      case 'rejected':
      default:
        return Colors.red;
    }
  }
}
