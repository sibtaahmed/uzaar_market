import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uzaar_market/constants.dart';

// // Assuming the 'constants.dart' file defines this class
// class ConstantColor {
//   static const Color primaryColor = Colors.purple;
//   static const Color orangeColor = Colors.orange;
//   static const Color lightgreyColor = Colors.grey;
// }

class ProductCatagory extends StatefulWidget {
  const ProductCatagory({super.key});

  @override
  State<ProductCatagory> createState() => _ProductCatagoryState();
}

class _ProductCatagoryState extends State<ProductCatagory> {
  final List<String> categories = [
    'Products',
    'Services',
    'Housing',
  ];
  int selectedTabIndex = 0;
  final List<Map<String, dynamic>> items = [
    {
      'text': 'Category',
      'isFilled': true,
    },
    {
      'text': 'New',
      'isFilled': true,
    },
    {
      'text': 'Price',
      'isFilled': false,
    },
    {
      'text': 'Location',
      'isFilled': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Category Tabs

            // Search Bar
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search here',
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                  ),
                  prefixIcon: IconButton(
                    icon: SvgPicture.asset('assets/images/search.svg'),
                    onPressed: () {},
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: ConstantColor.lightgreyColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: ConstantColor.lightgreyColor,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            // Filter Chips
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: items.map((item) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 155,
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(color: ConstantColor.primaryColor),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  item['isFilled']
                                      ? 'assets/images/tickF.svg'
                                      : 'assets/images/tick.svg',
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  item['text'],
                                  style: const TextStyle(
                                    color: ConstantColor.primaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 13),
                            child: SvgPicture.asset(
                              'assets/images/arrowdown.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            // Product Grid
            const SizedBox(height: 16),
            SizedBox(
              height: 500, // Set a fixed height for the GridView
              child: GridView.builder(
                physics:
                    const NeverScrollableScrollPhysics(), // Disable GridView scrolling
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  //   Widget getScreenForSelectedTab() {
  //   switch (selectedTabIndex) {
  //     case 0:
  //       return ProductsScreen(); // Replace with your Products screen widget
  //     case 1:
  //       return ServicesScreen(); // Replace with your Services screen widget
  //     case 2:
  //       return HousingScreen(); // Replace with your Housing screen widget
  //     default:
  //       return ProductsScreen();
  //   }
  // }
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
    price: '\$120',
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

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

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
                  product.imageUrl,
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
                      product.category,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                if (product.isNew)
                  Positioned(
                    bottom: 10,
                    left: 2,
                    child: Container(
                        // padding: const EdgeInsets.all(4),
                        // decoration: const BoxDecoration(
                        //   color: Colors.green,
                        //   shape: BoxShape.circle,
                        // ),
                        // child: const Text(
                        //   'New',
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontWeight: FontWeight.bold,
                        //     fontSize: 10,
                        //   ),
                        // ),
                        ),
                  ),
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
                  Text(product.name,
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
                          Text(product.location,
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
                          Text(product.price,
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
