import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/constants.dart';

class HousingCard extends StatefulWidget {
  final Housing housing;

  const HousingCard({super.key, required this.housing});

  @override
  State<HousingCard> createState() => _HousingCardState();
}

class _HousingCardState extends State<HousingCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        width: 158,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Adding the '3dots.svg' icon at the start

              Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(16.0)),
                    child: Image.asset(
                      widget.housing.imageUrl,
                      fit: BoxFit.cover,
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
                    bottom: 10,
                    left: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        height: 20,
                        width: 80,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              ConstantColor.primaryColor,
                              ConstantColor.orangeColor
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            widget.housing.category,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.housing.name,
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
                            const SizedBox(width: 4),
                            Text(widget.housing.location,
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
                            const SizedBox(width: 3),
                            Text(widget.housing.price,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: ConstantColor.primaryColor)),
                          ],
                        ),
                        // const SizedBox(height: 2),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      'Furnished',
                      style: TextStyle(
                          fontSize: 10,
                          color: ConstantColor.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/area.svg",
                              width: 14,
                              height: 14,
                            ),
                            const SizedBox(width: 2),
                            const Text(
                              '4500 sq.ft',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/bath.svg",
                              width: 14,
                              height: 14,
                            ),
                            const SizedBox(width: 2),
                            const Text(
                              '2',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/bed.svg",
                              width: 14,
                              height: 14,
                            ),
                            const SizedBox(width: 2),
                            const Text(
                              '2',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // const SizedBox(height: 10),
              // const Divider(
              //   color: Colors.grey,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class Housing {
  final String category;
  final String name;
  final String location;
  final String imageUrl;
  final String price;
  final bool isNew;

  Housing({
    required this.category,
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.price,
    required this.isNew,
  });
}

final List<Housing> housing = [
  Housing(
    category: 'Rental',
    name: '2 Bedroom house',
    location: 'Los Angeles',
    imageUrl: 'assets/images/Bedroomhouse.png',
    price: '\$12',
    isNew: true,
  ),
  Housing(
    category: 'For Sale',
    name: '2 Bedroom house',
    location: 'Los Angeles',
    imageUrl: 'assets/images/bedroom2.png',
    price: '\$12',
    isNew: true,
  ),
  Housing(
    category: 'For Sale',
    name: '2 Bedroom house',
    location: 'Los Angeles',
    imageUrl: 'assets/images/bedroom2.png',
    price: '\$12',
    isNew: true,
  ),
  Housing(
    category: 'Lease',
    name: '2 Bedroom house',
    location: 'Los Angeles',
    imageUrl: 'assets/images/bedroom4.png',
    price: '\$12',
    isNew: true,
  ),
];
