import 'package:flutter/material.dart';

class ProductFormScreen extends StatefulWidget {
  const ProductFormScreen({super.key});

  @override
  _ProductFormScreenState createState() => _ProductFormScreenState();
}

class _ProductFormScreenState extends State<ProductFormScreen> {
  String? _condition = 'New'; // Default condition
  String? _selectedCategory; // Default selected category
  int _selectedIndex1 = 0;

  Widget _buttons(String text, int index) {
    bool isSelected = _selectedIndex1 == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex1 = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          gradient: isSelected
              ? const LinearGradient(
                  colors: [Colors.purple, Colors.orange],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : null,
          color: isSelected ? null : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              // Product Name Field with label above
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
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
