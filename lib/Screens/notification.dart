import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notification',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        forceMaterialTransparency: true,

        // centerTitle: true,
      ),
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
              for (int i = 0; i < 4; i++)
                const NotificationCard(), // Example: Display 3 review cards
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(bottom: 16.0),
      elevation: 3,
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Profile Image
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                  'assets/images/Notifylogo.png'), // Replace with your user image asset
            ),
            SizedBox(width: 16),

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
                          Text(
                            'Offer Recieved',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // Row(
                          //   children: List.generate(5, (index) {
                          //     return const Icon(
                          //       Icons.star,
                          //       color: Colors.amber,
                          //       size: 20,
                          //     );
                          //   }),
                          // ),
                        ],
                      ),
                      Text(
                        '2 min ago',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),

                  // Review Text
                  Text(
                    'You have recieved an offer on..',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),

                  // SizedBox(height: 10),

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
