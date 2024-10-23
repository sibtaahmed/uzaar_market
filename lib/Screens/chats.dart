import 'package:flutter/material.dart';
import 'package:uzaar_market/Screens/chatscreen.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chats',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        forceMaterialTransparency: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // List of Reviews (placed inside the Column to scroll together with the rest)
              for (int i = 0; i < 4; i++)
                const ChatCard(), // Example: Display 3 review cards
            ],
          ),
        ),
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({super.key});

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
            // Wrap the CircleAvatar with GestureDetector to detect taps
            GestureDetector(
              onTap: () {
                // Navigate to the Notify screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()),
                );
              },
              child: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  'assets/images/lisa1.png',
                ), // Replace with your user image asset
              ),
            ),
            const SizedBox(width: 16),

            // Review Content
            const Expanded(
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
                            'Username',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                    'Lorem ipsum dolor sit amet.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
