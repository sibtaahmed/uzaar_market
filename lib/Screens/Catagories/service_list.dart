import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ServiceList extends StatelessWidget {
  const ServiceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 4, // The number of product items
        itemBuilder: (context, index) {
          return const ProductCard();
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

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
                'assets/images/graphic_design.png',
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
                    'Graphic Design',
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
                      const SizedBox(width: 23),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/edit.svg",
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 5),
                          SvgPicture.asset(
                            "assets/images/delete.svg",
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 20),
                          SvgPicture.asset(
                            "assets/images/3dots.svg",
                            color: Colors.grey,
                            width: 20,
                            height: 20,
                          ),
                        ],
                      )
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
                ],
              ),
            ),
            // More Options Icon
            // IconButton(
            //   onPressed: () {
            //     // Handle more options
            //   },
            //   icon: const Icon(Icons.more_vert),
            //   color: Colors.grey,
            // ),
          ],
        ),
      ),
    );
  }
}
