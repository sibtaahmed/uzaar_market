import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> messages = [
    {
      "message":
          "Lorem ipsum dolor sit amet consectetur. Felis luctus eget feugiat nunc urna vestibulum commodo sit.",
      "time": "2 min ago",
      "isMe": false,
      "profilePic":
          "assets/images/lisa1.png" // Replace with recipient's DP asset
    },
    {
      "message": "Lorem ipsum dolor sit amet consectetur.",
      "time": "2 min ago",
      "isMe": true,
      "profilePic": "assets/images/lisa1.png" // Replace with user's DP asset
    },
    {
      "message": "Lorem ipsum dolor sit amet consectetur.",
      "time": "2 min ago",
      "isMe": true,
      "profilePic": "assets/images/lisa1.png"
    },
    {
      "message": "Lorem ipsum dolor sit amet consectetur.",
      "time": "2 min ago",
      "isMe": false,
      "isProduct": true,
      "profilePic": "assets/images/lisa1.png",
      "product": {
        "name": "Iphone 14",
        "condition": "New",
        "price": "\$120",
        "location": "Los Angeles",
        "offer": "\$100 Offer Received",
        "category": "Electronics",
        "imageUrl":
            "assets/images/cardiphone.png" // Replace with your image asset
      }
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Albert',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        // leading: const Icon(Icons.arrow_back),
        forceMaterialTransparency: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                if (message['isProduct'] == true) {
                  return productMessageCard(
                      message['product'], message['profilePic']);
                }
                return chatRow(message['message'], message['time'],
                    message['isMe'], message['profilePic']);
              },
            ),
          ),
          chatInputField(),
        ],
      ),
    );
  }

  // Chat row with DP and chat bubble
  Widget chatRow(String message, String time, bool isMe, String profilePic) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isMe) ...[
          profilePicture(profilePic), // Show DP for the other person
          const SizedBox(width: 8),
        ],
        chatBubble(message, time, isMe),
        if (isMe) ...[
          const SizedBox(width: 8),
          profilePicture(profilePic), // Show DP for the current user
        ],
      ],
    );
  }

  // Chat bubble widget
  Widget chatBubble(String message, String time, bool isMe) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: isMe ? Colors.deepPurple : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      constraints: const BoxConstraints(maxWidth: 250),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            message,
            style: TextStyle(
              color: isMe ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            time,
            style: TextStyle(
              color: isMe ? Colors.white60 : Colors.black54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  // Profile picture widget
  Widget profilePicture(String imageUrl) {
    return CircleAvatar(
      radius: 16,
      backgroundImage: AssetImage(imageUrl),
    );
  }

  // Product card widget
  Widget productMessageCard(Map<String, String> product, String profilePic) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        profilePicture(profilePic),
        const SizedBox(width: 8),
        Container(
          width: 256,
          margin: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image and Details
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Image.asset(
                      product['imageUrl']!,
                      height: 260,
                      width: 220,
                    ),
                    // const SizedBox(width: 12),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Text(
                    //       product['category']!,
                    //       style: const TextStyle(
                    //           backgroundColor: Colors.orange,
                    //           color: Colors.white,
                    //           fontSize: 12),
                    //     ),
                    //     const SizedBox(height: 8),
                    //     Text(
                    //       product['name']!,
                    //       style: const TextStyle(
                    //           fontSize: 16, fontWeight: FontWeight.bold),
                    //     ),
                    //     Text(
                    //       product['condition']!,
                    //       style: const TextStyle(
                    //           fontSize: 12, color: Colors.grey),
                    //     ),
                    //     Row(
                    //       children: [
                    //         const Icon(Icons.location_on,
                    //             size: 12, color: Colors.grey),
                    //         const SizedBox(width: 4),
                    //         Text(
                    //           product['location']!,
                    //           style: const TextStyle(
                    //               fontSize: 12, color: Colors.grey),
                    //         ),
                    //       ],
                    //     ),
                    //     const SizedBox(height: 4),
                    //     Text(
                    //       product['price']!,
                    //       style: const TextStyle(
                    //           fontSize: 16,
                    //           color: Colors.deepPurple,
                    //           fontWeight: FontWeight.bold),
                    //     ),
                    //   ],
                    // )
                  ],
                ),
              ),
              // Offer Received Text
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Center(
                  child: Text(
                    product['offer']!,
                    style: const TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Input field for typing messages
  Widget chatInputField() {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          // color: Colors.grey[200], // Background color of the input field
          border: Border.all(
            color: ConstantColor.lightgreyColor, // Border color
            width: 1.0, // Border width
          ),
          borderRadius: BorderRadius.circular(30),
          // Rounded corners for input field
        ),
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Type here...', // Placeholder text
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(left: 10) // Remove the border
                    ),
              ),
            ),
            const Icon(Icons.attach_file, color: Colors.grey),
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset('assets/images/send.svg'),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
