import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uzaar_market/constants.dart'; // Fixed import path

class SearchProductScreen extends StatefulWidget {
  const SearchProductScreen({super.key});

  @override
  State<SearchProductScreen> createState() => _SearchProductScreenState();
}

class _SearchProductScreenState extends State<SearchProductScreen> {
  final List<String> categories = [
    'Products',
    'Services',
    'Housing',
  ];
  final List<Map<String, String>> featuredProducts = [
    {
      'name': '2 Bedroom house',
      'location': 'Los Angeles',
      'category': 'Rental',
      "categoryColor": "Colors.blue",
      'price': '\$12',
      'imageUrl':
          'assets/images/Bedroomhouse.png' // Replace with your image asset
    },
    {
      'name': '2 Bedroom house',
      'location': 'Los Angeles',
      "categoryColor": "Colors.blue",
      'category': 'For Sale',
      'price': '\$120',
      'imageUrl': 'assets/images/bedroom2.png' // Replace with your image asset
    },
    {
      'name': '2 Bedroom house',
      'location': 'Los Angeles',
      "categoryColor": "Colors.blue",
      'category': 'For Sale',

      'price': '\$120',
      'imageUrl': 'assets/images/bedroom2.png' // Replace with your image asset
    },
    {
      'name': '2 Bedroom house',
      'location': 'Los Angeles',
      "categoryColor": "Colors.blue",
      'category': 'Lease',
      'price': '\$12',
      'imageUrl': 'assets/images/bedroom4.png' // Replace with your image asset
    },
    // Add more services here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/images/menu.svg'),
          onPressed: () {},
        ),
        title: const Text(
          'Explore',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/images/chat.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/images/bell.svg'),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category Tabs
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: index == 0
                              ? const LinearGradient(
                                  colors: [
                                    ConstantColor.primaryColor,
                                    ConstantColor.orangeColor
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                )
                              : LinearGradient(
                                  colors: [
                                    Colors.grey[200]!,
                                    Colors.grey[200]!
                                  ],
                                ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            foregroundColor:
                                index == 0 ? Colors.white : Colors.grey,
                          ),
                          child: Text(categories[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Search Bar
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
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
                            color: Colors
                                .grey)), // Replace with ConstantColor.lightgreyColor
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 21, 21, 22),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),

              // Start Cards
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 8,
                      children: [
                        _buildFilterChip('Category', true),
                        _buildFilterChip('New', true),
                        _buildFilterChip('Price', true),
                        // _buildFilterChip('Discount', false),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Featured Products',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 500, 
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 0.75,
                        ),
                        itemCount: featuredProducts.length,
                        itemBuilder: (context, index) {
                          return _searchProduct(featuredProducts[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterChip(String label, bool selected) {
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      selectedColor: Colors.purple[50],
      labelStyle: TextStyle(
        color: selected ? ConstantColor.primaryColor : Colors.black,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          color: ConstantColor.primaryColor,
        ),
      ),
      onSelected: (value) {},
    );
  }
}

Widget _searchProduct(Map<String, String> product) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.asset(
                product['imageUrl']!,
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
              top: 8,
              right: 8,
              child: Icon(Icons.more_vert, color: Colors.white),
            ),
            Positioned(
              bottom: 8,
              left: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
                  product["category"]!,
                  style: const TextStyle(color: Colors.white),
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
              Text(product["name"]!,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Text(product['price']!,
                  style: TextStyle(color: Colors.green[600])),
            ],
          ),
        ),
      ],
    ),
  );
}
