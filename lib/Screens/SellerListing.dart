import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/Screens/housing_details_Screen.dart';
import 'package:uzaar_market/Screens/product_details_screen.dart';
import 'package:uzaar_market/Screens/sidemenu.dart';
import 'package:uzaar_market/constants.dart';
import 'package:uzaar_market/service_detail_Screen.dart';

class SellerListing extends StatefulWidget {
  const SellerListing({super.key});

  @override
  State<SellerListing> createState() => _SellerListingState();
}

class _SellerListingState extends State<SellerListing> {
  final List<Map<String, String>> featuredProducts = [
    {
      'title': 'White Men Shirt',
      'category': 'Fashion',
      'location': 'Los Angeles',
      'price': '\$12',
      'image': 'assets/images/shirt.png' // Replace with your image asset
    },
    {
      'title': 'iPhone 14',
      'category': 'Electronics',
      'location': 'Los Angeles',
      'price': '\$120',
      'image': 'assets/images/phone.png' // Replace with your image asset
    },
    {
      'title': 'Notebook',
      'category': 'Stationery',
      'location': 'Los Angeles',
      'price': '\$12',
      'image': 'assets/images/notebook.png' // Replace with your image asset
    },
    {
      'title': 'iPhone 14',
      'category': 'Electronics',
      'location': 'Los Angeles',
      'price': '\$120',
      'image': 'assets/images/phone.png' // Replace with your image asset
    },
  ];

  final List<Map<String, String>> featuredServices = [
    {
      'title': 'Graphic Design',
      'category': 'Designing',
      'location': 'Los Angeles',
      'price': '\$12',
      'image':
          'assets/images/graphic_design.png' // Replace with your image asset
    },
    {
      'title': 'Web Development',
      'category': 'Tech',
      'location': 'Los Angeles',
      'price': '\$120',
      'image':
          'assets/images/web_development.png' // Replace with your image asset
    },
    {
      'title': 'Makeup & SPA',
      'category': 'Beauty',
      'location': 'Los Angeles',
      'price': '\$12',
      'image': 'assets/images/makeup.png' // Replace with your image asset
    },
    {
      'title': 'Graphic Design',
      'category': 'Designing',
      'location': 'Los Angeles',
      'price': '\$12',
      'image':
          'assets/images/graphic_gallery.png' // Replace with your image asset
    },
  ];

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSection('Featured Products', featuredProducts),
            buildSection('Featured Services', featuredServices),
          ],
        ),
      ),
    );
  }

  Widget buildSection(String title, List<Map<String, String>> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSectionTitle(title),
        SizedBox(
          height: 225,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => title == 'Featured Products'
                          ? ProductDetailScreen()
                          : ServiceDetailScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  child: buildCard(items[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildSectionTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ),
        // TextButton(
        //   onPressed: () {},
        //   child: const Text('View All'),
        // ),
      ],
    );
  }

  // Reusable buildCard method for both products and services
  Widget buildCard(Map<String, String> item) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 8.0),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(16.0)),
                  child: Image.asset(
                    item['image']!,
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
                          item['category']!,
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
                  Text(item['title']!,
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
                        children: [
                          SvgPicture.asset(
                            "assets/images/location.svg",
                            width: 15,
                            height: 15,
                          ),
                          const SizedBox(width: 2),
                          Text(item['location']!,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 12)),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/tag.svg",
                            width: 15,
                            height: 15,
                          ),
                          const SizedBox(width: 2),
                          Text(item['price']!,
                              style: const TextStyle(
                                  color: ConstantColor.primaryColor,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
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
