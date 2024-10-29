import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/constants.dart';

class ServiceCategory2 extends StatefulWidget {
  const ServiceCategory2({super.key});

  @override
  State<ServiceCategory2> createState() => _ServiceCategory2State();
}

class _ServiceCategory2State extends State<ServiceCategory2> {
  final String _condition = 'New'; // Default condition
  String? _selectedCategory; // Default selected category
  // int _selectedIndex1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Service Name',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                initialValue: 'Service Name',
                style: const TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset('assets/images/servicename.svg'),
                  ),
                  // border: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //     color: Colors.amber,
                  //   ),
                  //   borderRadius: BorderRadius.circular(30),
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ConstantColor.lightgreyColor,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ConstantColor.darkgreyColor,
                    ),
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
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset('assets/images/category.svg'),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ConstantColor.lightgreyColor,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ConstantColor.darkgreyColor,
                    ),
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
              const SizedBox(height: 10),

              // Condition (New or Used)

              const SizedBox(height: 20),

              // Product Description Field with label above
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Service Description',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                initialValue: 'Description here',
                style: const TextStyle(color: Colors.grey),
                maxLines: 3,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ConstantColor.lightgreyColor,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ConstantColor.darkgreyColor,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Location',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: const Text(
                    'Your location here',
                    style: TextStyle(color: Colors.grey),
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
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(
                      "assets/images/filledlocation.svg",
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(
                      "assets/images/location.svg",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
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
                initialValue: 'Enter price',
                style: const TextStyle(color: Colors.grey),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      "assets/images/tag.svg",
                    ),
                  ),
                  // border: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //     color: ConstantColor.lightgreyColor,
                  //   ),
                  //   borderRadius: BorderRadius.circular(30),
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ConstantColor.lightgreyColor,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ConstantColor.darkgreyColor,
                    ),
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
                  'Boosting Options(Optional)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              DropdownButtonFormField<String>(
                value: _selectedCategory,
                decoration: InputDecoration(
                  hintText: 'Select Opttion',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/images/boost.svg',
                    ),
                  ),
                  // border: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //     color: ConstantColor.lightgreyColor,
                  //   ),
                  //   borderRadius: BorderRadius.circular(30),
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ConstantColor.lightgreyColor,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ConstantColor.darkgreyColor,
                    ),
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
        ));
  }
}
