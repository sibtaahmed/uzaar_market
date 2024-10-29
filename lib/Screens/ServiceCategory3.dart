import 'package:flutter/material.dart';

class ServiceCategory3 extends StatefulWidget {
  const ServiceCategory3({super.key});

  @override
  State<ServiceCategory3> createState() => _ServiceCategory3State();
}

class _ServiceCategory3State extends State<ServiceCategory3> {
  String? _condition = 'New'; // Default condition
  String? _selectedCategory; // Default selected category
  // int _selectedIndex1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Product Name',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          initialValue: 'Iphone14',
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.inventory_2_outlined),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        const SizedBox(height: 20),

        // Category Dropdown with label above
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Category',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 5),
        DropdownButtonFormField<String>(
          value: _selectedCategory,
          decoration: InputDecoration(
            hintText: "Select category",
            prefixIcon: const Icon(Icons.category),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          items: ['Electronics', 'Clothing', 'Home Appliances']
              .map((String category) {
            return DropdownMenuItem<String>(
              value: category,
              child: Text(category),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedCategory = newValue;
            });
          },
        ),
        const SizedBox(height: 20),

        // Condition (New or Used)
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Condition:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 16),
            Row(
              children: [
                Radio<String>(
                  value: 'New',
                  groupValue: _condition,
                  onChanged: (String? value) {
                    setState(() {
                      _condition = value;
                    });
                  },
                ),
                const Text('New'),
              ],
            ),
            const SizedBox(width: 16),
            Row(
              children: [
                Radio<String>(
                  value: 'Used',
                  groupValue: _condition,
                  onChanged: (String? value) {
                    setState(() {
                      _condition = value;
                    });
                  },
                ),
                const Text('Used'),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),

        // Product Description Field with label above
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Product Description',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          initialValue: 'Description here',
          maxLines: 3,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        const SizedBox(height: 20),

        // Price Field with label above
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Price',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          initialValue: '\$120',
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.attach_money),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ],
    ));
  }
}
