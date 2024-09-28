import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> categories = [
    'Products',
    'Services',
    'Housing',
  ];

  final List<Map<String, String>> featuredProducts = [
    {
      'title': 'White Men Shirt',
      'category': 'Fashion',
      'location': 'Los Angeles',
      'price': '\$12',
      'image': 'assets/images/white_shirt.svg' // Replace with your image asset
    },
    {
      'title': 'iPhone 14',
      'category': 'Electronics',
      'location': 'Los Angeles',
      'price': '\$120',
      'image': 'assets/images/Logo.svg' // Replace with your image asset
    },
    {
      'title': 'iPhone 14',
      'category': 'Electronics',
      'location': 'Los Angeles',
      'price': '\$120',
      'image': 'assets/images/white_shirt.png' // Replace with your image asset
    },
    {
      'title': 'iPhone 14',
      'category': 'Electronics',
      'location': 'Los Angeles',
      'price': '\$120',
      'image': 'assets/images/white_shirt.png' // Replace with your image asset
    },
    {
      'title': 'iPhone 14',
      'category': 'Electronics',
      'location': 'Los Angeles',
      'price': '\$120',
      'image': 'assets/images/white_shirt.png' // Replace with your image asset
    },
    // Add more product details here
  ];

  final List<Map<String, String>> featuredServices = [
    {
      'title': 'Graphic Design',
      'location': 'Online',
      'image': 'assets/images/white_shirt.png' // Replace with your image asset
    },
    {
      'title': 'Web Development',
      'location': 'Online',
      'image': 'assets/images/Logo.svg' // Replace with your image asset
    },
    // Add more services here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black),
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
              // Greeting Text
              const Text(
                'Good Morning!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const Text(
                'John',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),

              // Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search here',
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              // Category Tabs
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor:
                              index == 0 ? Colors.deepPurple : Colors.grey[300],
                          foregroundColor:
                              index == 0 ? Colors.white : Colors.black,
                        ),
                        child: Text(categories[index]),
                      ),
                    );
                  },
                ),
              ),

              // Category Icons
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildCategoryIcon(Icons.devices, 'Electronics'),
                      buildCategoryIcon(Icons.directions_car, 'Vehicle'),
                      // buildCategoryIcon(Icons.dress, 'Fashion'),
                      buildCategoryIcon(Icons.book, 'Books'),
                    ],
                  ),
                ),
              ),

              // Featured Products
              buildSectionTitle('Featured Products'),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: featuredProducts.length,
                  itemBuilder: (context, index) {
                    return buildProductCard(featuredProducts[index]);
                  },
                ),
              ),

              // Featured Services
              buildSectionTitle('Featured Services'),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: featuredServices.length,
                  itemBuilder: (context, index) {
                    return buildServiceCard(featuredServices[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Colors.grey,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget buildCategoryIcon(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Icon(icon, color: Colors.black),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget buildSectionTitle(String title) {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16.0)),
                child: Image.asset(
                  product['image']!,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product['category']!,
                      style: const TextStyle(
                          color: Colors.deepPurple, fontSize: 12)),
                  Text(product['title']!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14)),
                  Text(product['location']!,
                      style: const TextStyle(color: Colors.grey, fontSize: 12)),
                  Text(product['price']!,
                      style: const TextStyle(
                          color: Colors.deepPurple, fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildServiceCard(Map<String, String> service) {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16.0)),
                child: SvgPicture.asset(
                  service['image']!,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(service['title']!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14)),
                  Text(service['location']!,
                      style: const TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
