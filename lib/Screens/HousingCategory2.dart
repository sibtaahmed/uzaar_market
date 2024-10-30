import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uzaar_market/constants.dart';

class HousingCategory2 extends StatefulWidget {
  const HousingCategory2({super.key});

  @override
  State<HousingCategory2> createState() => _HousingCategory2State();
}

class _HousingCategory2State extends State<HousingCategory2> {
  String? _condition = 'Yes';
  String? _selectedCategory;

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
                'Listing Name',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              initialValue: 'Listing Name',
              style: const TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset('assets/images/list01.svg'),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ConstantColor.lightgreyColor),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ConstantColor.darkgreyColor),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 10),

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
                hintText: "Rental",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset('assets/images/category.svg'),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ConstantColor.lightgreyColor),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ConstantColor.darkgreyColor),
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
              decoration: InputDecoration(
                label: const Text(
                  'location here',
                  style: TextStyle(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      const BorderSide(color: ConstantColor.lightgreyColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 21, 21, 22),
                    width: 1.0,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SvgPicture.asset("assets/images/filledlocation.svg"),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SvgPicture.asset("assets/images/location.svg"),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Price',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              initialValue: 'Enter Price',
              style: const TextStyle(color: Colors.grey),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset("assets/images/tag.svg"),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ConstantColor.lightgreyColor),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ConstantColor.darkgreyColor),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Furnished:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 16),
                Row(
                  children: [
                    Radio<String>(
                      value: 'Yes',
                      groupValue: _condition,
                      onChanged: (String? value) {
                        setState(() {
                          _condition = value;
                        });
                      },
                    ),
                    const Text(
                      'Yes',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                Row(
                  children: [
                    Radio<String>(
                      value: 'No',
                      groupValue: _condition,
                      onChanged: (String? value) {
                        setState(() {
                          _condition = value;
                        });
                      },
                    ),
                    const Text(
                      'No',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Description',
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
              child: Text(
                'Area',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              initialValue: 'Area (Sq. mt)',
              style: const TextStyle(color: Colors.grey),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset("assets/images/area.svg"),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ConstantColor.lightgreyColor),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ConstantColor.darkgreyColor),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Bedroom and Bathroom selectors
            BedroomBathroomSelector(
              selectedCategory: _selectedCategory,
              onCategoryChanged: (String? newValue) {
                setState(() {
                  _selectedCategory = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BedroomBathroomSelector extends StatelessWidget {
  final String? selectedCategory;
  final ValueChanged<String?> onCategoryChanged;

  const BedroomBathroomSelector({
    super.key,
    required this.selectedCategory,
    required this.onCategoryChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildOption('Bedroom', 'assets/images/bed.svg', '2'),
            buildOption('Bathroom', 'assets/images/bath.svg', '2'),
          ],
        ),
        const SizedBox(height: 10),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '*Boost your listings now to get more orders or you can boost later',
            style: TextStyle(fontSize: 14),
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
          value: selectedCategory,
          decoration: InputDecoration(
            hintText: 'Select Option',
            hintStyle: const TextStyle(color: Colors.grey),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('assets/images/boost.svg'),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: ConstantColor.lightgreyColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: ConstantColor.darkgreyColor),
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
          onChanged: onCategoryChanged,
        ),
      ],
    );
  }

  Widget buildOption(String label, String icon, String count) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: ConstantColor.lightgreyColor),

            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.3),
            //     blurRadius: 10,
            //     offset: const Offset(0, 5),
            //   ),
            // ],
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 8),
              Text(count,
                  style: const TextStyle(fontSize: 18, color: Colors.grey)),
              const SizedBox(width: 30),
              const Icon(Icons.arrow_drop_down, color: Color(0xFF450e8b)),
            ],
          ),
        ),
      ],
    );
  }
}
