import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/constants.dart';

class ProductCard extends StatefulWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.product.imageUrl,
                  // height: 120,
                  // width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: SvgPicture.asset('assets/images/verify.svg',
                      width: 24, height: 24),
                ),
                Positioned(
                  left: 8,
                  bottom: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          ConstantColor.primaryColor,
                          ConstantColor.orangeColor
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      widget.product.category,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                // if (widget.product.isNew)
                //   Positioned(
                //     bottom: 10,
                //     left: 2,
                //     child: Container(
                //         // padding: const EdgeInsets.all(4),
                //         // decoration: const BoxDecoration(
                //         //   color: Colors.green,
                //         //   shape: BoxShape.circle,
                //         // ),
                //         // child: const Text(
                //         //   'New',
                //         //   style: TextStyle(
                //         //     color: Colors.white,
                //         //     fontWeight: FontWeight.bold,
                //         //     fontSize: 10,
                //         //   ),
                //         // ),
                //         ),
                //   ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: SvgPicture.asset('assets/images/3dots.svg',
                      width: 24, height: 24),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.product.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 2),
                  const Text('New',
                      style: TextStyle(
                          color: ConstantColor.primaryColor, fontSize: 14)),
                  const SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            "assets/images/location.svg",
                            width: 38,
                            height: 15,
                          ),
                          const SizedBox(width: 2),
                          Text(widget.product.location,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 12)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            "assets/images/tag.svg",
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 2),
                          Text(widget.product.price,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: ConstantColor.primaryColor)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Product {
  final String category;
  final String name;
  final String location;
  final String imageUrl;
  final String price;
  final bool isNew;

  Product({
    required this.category,
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.price,
    required this.isNew,
  });
}

final List<Product> products = [
  Product(
    category: 'Fashion',
    name: 'White Men Shirt',
    location: 'Los Angeles',
    imageUrl: 'assets/images/shirt.png',
    price: '\$12',
    isNew: true,
  ),
  Product(
    category: 'Electronics',
    name: 'Iphone 14',
    location: 'Los Angeles',
    imageUrl: 'assets/images/phone.png',
    price: '\$12',
    isNew: true,
  ),
  Product(
    category: 'Stationary',
    name: 'Note Book',
    location: 'Los Angeles',
    imageUrl: 'assets/images/notebook.png',
    price: '\$12',
    isNew: true,
  ),
  Product(
    category: 'Electronics',
    name: 'Note Book',
    location: 'Los Angeles',
    imageUrl: 'assets/images/phone.png',
    price: '\$12',
    isNew: true,
  ),
];
