import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uzaar_market/Screens/chats.dart';
import 'package:uzaar_market/Screens/sellerprofile.dart';
import 'package:uzaar_market/constants.dart';

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
      'image': 'assets/images/notebook.png',
    },
    {
      'title': 'Iphone 14',
      'category': 'Electronics',
      'location': 'Los Angeles',
      'price': '\$120',
      'image': 'assets/images/phone.png',
    },
  ];

  ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text(
          'Product Detail',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
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
                  "assets/images/iphone2.jpg",
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
                  ),
                )
              ],
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 10),
                            const Text(
                              'Iphone 14',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const SizedBox(height: 4),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/location.svg",
                                        width: 9,
                                        height: 13,
                                      ),
                                      const SizedBox(width: 4),
                                      const Text(
                                        'Los Angeles',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ]),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/tag.svg",
                                    width: 16,
                                    height: 16,
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
                                    '\$120',
                                    style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // const
                  // const SizedBox(height: 16),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(height: 14),
                        Text(
                          textAlign: TextAlign.justify,
                          'Lorem ipsum dolor sit amet consectetur. Neque nulla purus facilisis nibh vestibulum ridiculus non. Imperdiet rhoncus ipsum sed non. Tristique enim blandit ut lorem blandit commodo. Donec ipsum sodales est sed. At id sit morbi at faucibus at.',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(height: 30),
                  Container(
                    height: 52,
                    width: 390,
                    color: const Color(0xFFF7F8F8),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/images/chat.svg'),
                              const SizedBox(width: 15),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const ChatList()),
                                  );
                                },
                                child: const Text(
                                  'Start Chat',
                                  style: TextStyle(
                                      color: ConstantColor.primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/images/offer.svg'),
                              const SizedBox(width: 15),
                              const Text(
                                'Send Offer',
                                style: TextStyle(
                                    color: ConstantColor.primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Seller',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(height: 8),
                        Container(
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
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Stack(
                                        children: [
                                          Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                border: Border.all(
                                                    color: Colors.grey),
                                              ),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const SellerProfileScreen()),
                                                  );
                                                },
                                                child: Image.asset(
                                                  'assets/images/lisa1.png',
                                                  height: 25,
                                                ),
                                              )),
                                          Positioned(
                                              bottom: 0,
                                              right: 0,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/verify1.svg',
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      children: [
                                        const SizedBox(height: 10),
                                        const Text(
                                          'Lisa Fernandes',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    "assets/images/location.svg",
                                                    width: 9,
                                                    height: 13,
                                                  ),
                                                  const SizedBox(width: 4),
                                                  const Text(
                                                    'Los Angeles',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ]),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Row(
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/images/Star.svg",
                                            width: 16,
                                            height: 16,
                                          ),
                                          const SizedBox(width: 4),
                                          const Text(
                                            '4.5',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(width: 6),
                                          const Text(
                                            '(14)',
                                            style: TextStyle(
                                              color:
                                                  ConstantColor.lightgreyColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        // const Row(
                        //   children: [
                        //     CircleAvatar(
                        //       backgroundImage:
                        //           AssetImage('assets/images/Logo.png'),
                        //       radius: 30,
                        //     ),
                        //     SizedBox(width: 8),
                        //     Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Text(
                        //           'Lisa Fernandes',
                        //           style: TextStyle(fontWeight: FontWeight.bold),
                        //         ),
                        //         Row(
                        //           children: [
                        //             Icon(Icons.location_on,
                        //                 color: Colors.grey, size: 16),
                        //             SizedBox(width: 4),
                        //             Text('Los Angeles',
                        //                 style: TextStyle(color: Colors.grey)),
                        //           ],
                        //         ),
                        //         Row(
                        //           children: [
                        //             Icon(Icons.star,
                        //                 color: Colors.yellow, size: 16),
                        //             SizedBox(width: 4),
                        //             Text('4.5 (14)'),
                        //           ],
                        //         ),
                        //       ],
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(height: 16),

                        // const SizedBox(height: 8),

                        // my changes

                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // const SizedBox(height: 8),
                              _buildSectionTitle('More by This Seller'),
                              Container(
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                height: 225,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: moreBySeller.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProductDetailScreen(),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8, bottom: 8),
                                        child: buildProductCard(
                                            moreBySeller[index]),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ]),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 54,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: ConstantColor.primaryColor,
                            ),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Buy Now",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ])
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ],
      ),
    );
  }

  Widget buildProductCard(Map<String, String> product) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        width: 150,
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
                      product['image']!,
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
                            product['category']!,
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
                    Text(product['title']!,
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
                            Text(product['location']!,
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
                            Text(product['price']!,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
