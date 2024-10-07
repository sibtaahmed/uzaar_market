import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/constants.dart';

class ServicesCard extends StatefulWidget {
  final Services services;

  const ServicesCard({super.key, required this.services});

  @override
  State<ServicesCard> createState() => _ServicesCardState();
}

class _ServicesCardState extends State<ServicesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
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
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    widget.services.imageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/Star.svg',
                          width: 10, height: 15),
                      const SizedBox(width: 4),
                      const Text(
                        '4.5',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: SvgPicture.asset('assets/images/verify.svg',
                      width: 24, height: 24),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: SvgPicture.asset('assets/images/3dots.svg',
                      width: 24, height: 24),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
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
                    child: Center(
                      child: Text(
                        widget.services.category,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.services.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            "assets/images/location.svg",
                            width: 15,
                            height: 15,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(widget.services.location,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 14)),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('From',
                              style: TextStyle(
                                  color: ConstantColor.darkgreyColor,
                                  fontSize: 12)),
                          const SizedBox(height: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                "assets/images/tag.svg",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(widget.services.price,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: ConstantColor.primaryColor)),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Services {
  final String category;
  final String name;
  final String location;
  final String imageUrl;
  final String price;
  final bool isNew;

  Services({
    required this.category,
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.price,
    required this.isNew,
  });
}

final List<Services> services = [
  Services(
    category: 'Designing',
    name: 'Graphic Design',
    location: 'Los Angeles',
    imageUrl: 'assets/images/graphic_design.png',
    price: '\$12',
    isNew: true,
  ),
  Services(
    category: 'Tech',
    name: 'Web Development',
    location: 'Los Angeles',
    imageUrl: 'assets/images/web_development.png',
    price: '\$12',
    isNew: true,
  ),
  Services(
    category: 'Beauty',
    name: 'Makeup & SPA',
    location: 'Los Angeles',
    imageUrl: 'assets/images/makeup.png',
    price: '\$12',
    isNew: true,
  ),
  Services(
    category: 'Designing',
    name: 'Graphic Design',
    location: 'Los Angeles',
    imageUrl: 'assets/images/graphic_gallery.png',
    price: '\$12',
    isNew: true,
  ),
];
