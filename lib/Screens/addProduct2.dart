import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Addproduct2 extends StatefulWidget {
  const Addproduct2({super.key});

  @override
  State<Addproduct2> createState() => _Addproduct2State();
}

class _Addproduct2State extends State<Addproduct2> {
  String? _selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Add Minimum Offer Price ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 5),
          TextFormField(
            initialValue: 'Enter Minimum Price',
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/images/tag.svg',
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '*Boost your listings now to get more  orders or you can boost later',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 20),
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
              hintText: 'Select opttion',
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/images/boost.svg',
                ),
              ),
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
        ],
      ),
    );
  }
}
