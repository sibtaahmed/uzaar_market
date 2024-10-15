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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                // Pass a different status for each card for testing purposes
                String offerStatus;
                if (index == 0) {
                  offerStatus = 'accepted';
                } else if (index == 1) {
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
