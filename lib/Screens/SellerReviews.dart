import 'package:flutter/material.dart';
import 'package:uzaar_market/constants.dart';

class SellerReviews extends StatelessWidget {
  const SellerReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // "Added By You" Button at the Top
              const Align(
                alignment: Alignment.centerRight,
                // child: Container(
                //   padding: const EdgeInsets.symmetric(
                //       horizontal: 12.0, vertical: 5.0),
                //   // decoration: BoxDecoration(
                //   //   color: Colors.white,
                //   //   borderRadius: BorderRadius.circular(20),
                //   //   border: Border.all(color: Colors.grey[100]!, width: 2),
                //   // ),
                //   // child: const Row(
                //   //   mainAxisSize: MainAxisSize.min,
                //   //   children: [
                //   //     Text(
                //   //       'Added By You',
                //   //       style: TextStyle(
                //   //           color: Colors.grey, fontWeight: FontWeight.bold),
                //   //     ),
                //   //     Icon(
                //   //       Icons.arrow_drop_down,
                //   //       color: ConstantColor.primaryColor,
                //   //     ),
                //   //   ],
                //   // ),
                // ),
              ),

              // const SizedBox(height: 10),

              // List of Reviews (placed inside the Column to scroll together with the rest)
              for (int i = 0; i < 2; i++)
                const ReviewCard(), // Example: Display 3 review cards
            ],
          ),
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(bottom: 16.0),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Profile Image
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                  'assets/images/joseph.png'), // Replace with your user image asset
            ),
            const SizedBox(width: 16),

            // Review Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Username, Rating, and Review Date
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Username',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: List.generate(5, (index) {
                              return const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              );
                            }),
                          ),
                        ],
                      ),
                      const Text(
                        '08/08/2023',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Review Text
                  const Text(
                    'Lorem ipsum dolor sit amet consectetur...',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // // Product Image
                  // Image.asset(
                  //   'assets/images/ratingphone.png', // Replace with your product image asset
                  //   height: 70,
                  //   width: 90,
                  //   fit: BoxFit.cover,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
