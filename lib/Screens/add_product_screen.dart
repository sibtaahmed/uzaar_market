import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  List selectedCategory = ['Products', 'Services', 'Housing'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: getTabLength(),
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset('assets/images/menu.svg'),
            onPressed: () {},
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sell',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ],
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
        body: Column(
          children: [
            const Text('What do you want to sell?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCategoryButton('Products'),
                buildCategoryButton('Services'),
                buildCategoryButton('Housing'),
              ],
            ),
            // Tab Bar
            if (selectedCategory == 'Products' ||
                selectedCategory == 'Services' ||
                selectedCategory == 'Housing')
              TabBar(
                tabs: getTabs(),
                labelColor: Colors.deepPurple,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.deepPurple,
              ),
            Expanded(
              child: TabBarView(
                children: getTabScreens(),
              ),
            ),
            // Upload or Take Picture Section
            Column(
              children: [
                const Text(
                  'Upload or Take Picture',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                IconButton(
                  onPressed: () {
                    // Handle upload/take picture
                  },
                  icon: const Icon(Icons.camera_alt, color: Colors.deepPurple),
                  iconSize: 50,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Handle next button click
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Method to get tab length
  int getTabLength() {
    if (selectedCategory == 'Products') {
      return 3;
    } else if (selectedCategory == 'Services' ||
        selectedCategory == 'Housing') {
      return 2;
    }
    return 0;
  }

  // Method to get tabs for each category
  List<Widget> getTabs() {
    if (selectedCategory == 'Products') {
      return [
        const Tab(text: 'Product 1'),
        const Tab(text: 'Product 2'),
        const Tab(text: 'Product 3'),
      ];
    } else if (selectedCategory == 'Services') {
      return [
        const Tab(text: 'Service 1'),
        const Tab(text: 'Service 2'),
      ];
    } else if (selectedCategory == 'Housing') {
      return [
        const Tab(text: 'Housing 1'),
        const Tab(text: 'Housing 2'),
      ];
    }
    return [];
  }

  // Method to get Tab screens
  List<Widget> getTabScreens() {
    if (selectedCategory == 'Products') {
      return [
        const Center(child: Text('Product Screen 1')),
        const Center(child: Text('Product Screen 2')),
        const Center(child: Text('Product Screen 3')),
      ];
    } else if (selectedCategory == 'Services') {
      return [
        const Center(child: Text('Service Screen 1')),
        const Center(child: Text('Service Screen 2')),
      ];
    } else if (selectedCategory == 'Housing') {
      return [
        const Center(child: Text('Housing Screen 1')),
        const Center(child: Text('Housing Screen 2')),
      ];
    }
    return [];
  }

  // Method to build category buttons
  Widget buildCategoryButton(String category) {
    bool isSelected = selectedCategory == category;
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          gradient: isSelected
              ? const LinearGradient(
                  colors: [Colors.deepOrange, Colors.deepPurple])
              : null,
          color: isSelected ? null : Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          category,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
