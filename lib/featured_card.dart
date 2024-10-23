import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      'image': 'assets/images/books.png',
    },
  ];

  ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Product Detail',
          style: TextStyle(color: Colors.black),
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
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // ... (previous code remains unchanged)

              const SizedBox(height: 16),
              const Text(
                'More by This Seller',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 8),

              // here
              _buildSectionTitle('Featured Products'),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
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
                            builder: (context) => ProductDetailScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: _buildProductCard(moreBySeller[index]),
                      ),
                    );
                  },
                ),
              ),

              // ... (remaining code remains unchanged)
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
          TextButton(
            onPressed: () {},
            child: const Text('View All'),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(Map<String, String> product) {
    // Implement the product card widget here
    return Container(
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
                      height: 25,
                      width: 60,
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
                      child: const Center(
                        child: Text(
                          'Product',
                          style: TextStyle(fontSize: 12, color: Colors.white),
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
    );
  }
}

// import 'package:flutter/material.dart';

// class FilterChipsList extends StatefulWidget {
//   const FilterChipsList({super.key});

//   @override
//   State<FilterChipsList> createState() => _FilterChipsListState();
// }

// class _FilterChipsListState extends State<FilterChipsList> {
//   final List<String> filters = ['Category', 'New', 'Price', 'Location'];

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 50,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: filters.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: FilterChipWidget(label: filters[index]),
//           );
//         },
//       ),
//     );
//   }
// }

// class FilterChipWidget extends StatefulWidget {
//   final String label;

//   const FilterChipWidget({super.key, required this.label});

//   @override
//   State<FilterChipWidget> createState() => _FilterChipWidgetState();
// }

// class _FilterChipWidgetState extends State<FilterChipWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ChoiceChip(
//         label: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const Icon(
//               Icons.check_circle,
//               color: Colors.white,
//               size: 16,
//             ),
//             const SizedBox(width: 4),
//             Text(
//               widget.label,
//               style: const TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//         selected: true,
//         backgroundColor: Colors.white,
//         selectedColor: Colors.purple,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(25),
//           side: const BorderSide(
//             color: Colors.purple,
//           ),
//         ),
//         // onSelected: (value) {
//         //   // You can add functionality here when chip is selected
//         // },
//       ),
//     );
//   }
// }
