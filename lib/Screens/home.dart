import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/Screens/chats.dart';
import 'chatscreen.dart';
import 'package:uzaar_market/Screens/housing_details_Screen.dart';
import 'package:uzaar_market/Screens/notification.dart';
import 'package:uzaar_market/Screens/product_details_screen.dart';
import 'package:uzaar_market/Screens/sidemenu.dart';
import 'package:uzaar_market/constants.dart';
import 'package:uzaar_market/service_detail_Screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    // Add more services here
  ];

  final List<Map<String, String>> featuredCatogery = [
    {
      'title': 'Electronics',
      'image': 'assets/images/electronics.svg' // Replace with your image asset
    },
    {
      'title': 'Vehicle',
      'image': 'assets/images/Vehicle.svg' // Replace with your image asset
    },
    {
      'title': 'Fashion',
      'image': 'assets/images/dress.svg' // Replace with your image asset
    },
    {
      'title': 'Books',
      'image': 'assets/images/books.svg' // Replace with your image asset
    },
    {
      'title': 'Electronics',
      'image': 'assets/images/electronics.svg' // Replace with your image asset
    },
    {
      'title': 'Vehicle',
      'image': 'assets/images/Vehicle.svg' // Replace with your image asset
    },
    {
      'title': 'Fashion',
      'image': 'assets/images/dress.svg' // Replace with your image asset
    },
    {
      'title': 'Books',
      'image': 'assets/images/books.svg' // Replace with your image asset
    },
    // Add more services here
  ];
  final List<Map<String, String>> servicesCatogery = [
    {
      'title': 'Tech',
      'image': 'assets/images/tech.png' // Replace with your image asset
    },
    {
      'title': 'Designing',
      'image': 'assets/images/designing.png' // Replace with your image asset
    },
    {
      'title': 'Beauty',
      'image': 'assets/images/beauty.png' // Replace with your image asset
    },
    {
      'title': 'Medical',
      'image': 'assets/images/health.png' // Replace with your image asset
    },
    {
      'title': 'Printing',
      'image': 'assets/images/print.png' // Replace with your image asset
    },

    // Add more services here
  ];
  final List<Map<String, String>> housingCatogery = [
    {
      'title': 'Rental',
      'image': 'assets/images/rentall.png' // Replace with your image asset
    },
    {
      'title': 'ForSale',
      'image': 'assets/images/forsale.png' // Replace with your image asset
    },
    {
      'title': 'Lease',
      'image': 'assets/images/lease.png' // Replace with your image asset
    },

    // Add more services here
  ];

  final List<Map<String, String>> featuredHousing = [
    {
      'title': '2 Bedroom house',
      'location': 'Los Angeles',
      'category': 'Rental',
      'price': '\$12',
      'image': 'assets/images/Bedroomhouse.png' // Replace with your image asset
    },
    {
      'title': '2 Bedroom house',
      'location': 'Los Angeles',
      'category': 'For Sale',
      'price': '\$120',
      'image': 'assets/images/bedroom2.png' // Replace with your image asset
    },
    {
      'title': '2 Bedroom house',
      'location': 'Los Angeles',
      'category': 'For Sale',

      'price': '\$120',
      'image': 'assets/images/bedroom2.png' // Replace with your image asset
    },
    {
      'title': '2 Bedroom house',
      'location': 'Los Angeles',
      'category': 'Lease',
      'price': '\$12',
      'image': 'assets/images/bedroom4.png' // Replace with your image asset
    },
    // Add more services here
  ];
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
  }

  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const SideMenu(),
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: SvgPicture.asset('assets/images/menu.svg'),
            onPressed: () {
              Scaffold.of(context).openDrawer();
              print('Menu button pressed');
            },
          );
        }),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Text(
              'John',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/images/chat.svg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  ChatList(),
                ),
              );
            },
          ),
          IconButton(
            icon: SvgPicture.asset('assets/images/bell.svg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const notification(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search here',
                    // filled: true,
                    // fillColor: Colors.grey[200],
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
                            color: ConstantColor.lightgreyColor)),
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
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'What are you looking for?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: index == selectedTabIndex
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
                                    Colors.grey[100]!,
                                    Colors.grey[100]!
                                  ],
                                ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedTabIndex =
                                  index; // Update the selected tab index
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            foregroundColor: index == selectedTabIndex
                                ? Colors.white
                                : ConstantColor.darkgreyColor,
                          ),
                          child: Text(categories[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              // Category Icons
              selectedTabIndex == 0
                  ? SizedBox(
                      height: 105,
                      child: ListView.builder(
                        itemCount: featuredCatogery.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final category = featuredCatogery[index];
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey[100],
                                    radius: 40,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: SvgPicture.asset(
                                        category['image']!,
                                        fit: BoxFit.fill,
                                        height: 50,
                                        width: 50,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  category['title']!,
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  : selectedTabIndex == 1
                      ? SizedBox(
                          height: 105,
                          child: ListView.builder(
                            itemCount: servicesCatogery.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final category = servicesCatogery[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey[100],
                                        radius: 40,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          child: Image.asset(
                                            category['image']!,
                                            fit: BoxFit.fill,
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      category['title']!,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      : SizedBox(
                          height: 105,
                          child: ListView.builder(
                            itemCount: housingCatogery.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final category = housingCatogery[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey[100],
                                        radius: 40,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          child: Image.asset(
                                            category['image']!,
                                            fit: BoxFit.fill,
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      category['title']!,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),

              // Featured Products
              buildSectionTitle('Featured Products'),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                height: 225,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: featuredProducts.length,
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
                        child: buildProductCard(featuredProducts[index]),
                      ),
                    );
                  },
                ),
              ),
              buildSectionTitle('Featured Services'),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                height: 225,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: featuredServices.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ServiceDetailScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: buildServiceCard(featuredServices[index]),
                      ),
                    );
                  },
                ),
              ),
              buildSectionTitle('Featured Housing'),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                height: 240,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: featuredHousing.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HousingDetailScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: buildHousingCard(featuredHousing[index]),
                      ),
                    );
                  },
                ),
              ),

              // // Featured Services
              // buildSectionTitle('Featured Services'),
              // Container(
              //   decoration: const BoxDecoration(color: Colors.white),
              //   height: 230,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: featuredServices.length,
              //     itemBuilder: (context, index) {
              //       return Padding(
              //         padding: const EdgeInsets.only(top: 8, bottom: 8),
              //         child: buildServiceCard(featuredServices[index]),
              //       );
              //     },
              //   ),
              // ),

              // // Featured Housing
              // buildSectionTitle('Featured Housing'),
              // SizedBox(
              //   height: 230,
              //   width: MediaQuery.of(context).size.width,
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: featuredHousing.length,
              //       itemBuilder: (context, index) {
              //         return Padding(
              //           padding: const EdgeInsets.only(top: 8, bottom: 8),
              //           child: buildProductCard(featuredHousing[index]),
              //         );
              //       },
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
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

//card1
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

//card2
  Widget buildServiceCard(Map<String, String> product) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        width: 160,
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
            // Expanded(
            //   child: ClipRRect(
            //     borderRadius:
            //         const BorderRadius.vertical(top: Radius.circular(16.0)),
            //     child: Image.asset(
            //       product['image']!,
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    product['image']!,
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
                          Text(product['location']!,
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
                              Text(product['price']!,
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

//card3
  Widget buildHousingCard(Map<String, String> service) {
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
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      service['image']!,
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
                            service['category']!,
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
                    Text(service['title']!,
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
                            Text(service['location']!,
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
                            Text(service['price']!,
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
