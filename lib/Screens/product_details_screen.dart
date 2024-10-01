import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailScreen extends StatelessWidget {
  final List<Map<String, String>> moreBySeller = [
    {
      'title': 'White Men Shirt',
      'category': 'Fashion',
      'location': 'Los Angeles',
      'price': '\$12',
      'image': 'assets/images/shirt.png',
    },
    {
      'title': 'Iphone 14',
      'category': 'Electronics',
      'location': 'Los Angeles',
      'price': '\$120',
      'image': 'assets/images/phone.png',
    },
    {
      'title': 'Note Book',
      'category': 'Stationery',
      'location': 'Los Angeles',
      'price': '\$5',
      'image': 'assets/images/books.png',
    },
  ];

  ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Detail',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/phone.png',
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.deepPurple,
                          Colors.orange,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'Electronics',
                      style: TextStyle(color: Colors.white),
                    ),
                  ), // Added a child widget
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // const SizedBox(height: 16),
                    // const SizedBox(height: 8),
                    const Text(
                      'Iphone 14',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    const SizedBox(height: 4),
                    const Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.grey, size: 16),
                        SizedBox(width: 4),
                        Text('Los Angeles',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '\$120',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Description',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Lorem ipsum dolor sit amet consectetur. Neque nulla purus facilisis nibh vestibulum ridiculus non. Imperdiet rhoncus ipsum sed non. Tristique enim blandit ut lorem blandit commodo. Donec ipsum sodales est sed. At id sit morbi at faucibus at.',
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/images/chat.svg'),
                          label: const Text('Start Chat'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/images/offer.svg'),
                          label: const Text('Send Offer'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Seller',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/Logo.png'),
                          radius: 30,
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lisa Fernandes',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    color: Colors.grey, size: 16),
                                SizedBox(width: 4),
                                Text('Los Angeles',
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 16),
                                SizedBox(width: 4),
                                Text('4.5 (14)'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'More by This Seller',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(height: 8),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: moreBySeller.map((product) {
                          return Container(
                            width: 150,
                            margin: const EdgeInsets.only(right: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset(
                                    product['image']!,
                                    fit: BoxFit.cover,
                                    width: 150,
                                    height: 100,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Colors.deepPurple,
                                        Colors.orange,
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Text(
                                    product['category']!,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  product['title']!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.location_on,
                                        color: Colors.grey, size: 12),
                                    const SizedBox(width: 4),
                                    Text(product['location']!,
                                        style: const TextStyle(
                                            color: Colors.grey, fontSize: 12)),
                                  ],
                                ),
                                Text(
                                  product['price']!,
                                  style: const TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
