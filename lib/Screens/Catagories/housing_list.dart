import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(const MaterialApp(home: HouseList()));

class HouseList extends StatelessWidget {
  const HouseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('House Listings'),
      //   backgroundColor: Colors.deepPurple,
      //   centerTitle: true,
      // ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 4, // The number of house items
        itemBuilder: (context, index) {
          return HouseCard(
            furnished: index % 2 == 0 ? "Furnished" : "Not Furnished",
            price: "\$1200",
            houseSize: "4500 sq.mt",
            bedroomCount: 2,
            bathroomCount: 2,
            labelType:
                index == 1 ? "For Sale" : (index == 2 ? "Lease" : "Rental"),
          );
        },
      ),
    );
  }
}

class HouseCard extends StatelessWidget {
  final String furnished;
  final String price;
  final String houseSize;
  final int bedroomCount;
  final int bathroomCount;
  final String labelType;

  const HouseCard({
    super.key,
    required this.furnished,
    required this.price,
    required this.houseSize,
    required this.bedroomCount,
    required this.bathroomCount,
    required this.labelType,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // House Image and Label (Rental/For Sale/Lease)
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/Bedroomhouse.png',
                    height: 95,
                    width: 84,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.deepOrange, Colors.deepPurple],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      labelType,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 10),
            // House Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '2 bedroom house',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    furnished,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/location.svg",
                        width: 38,
                        height: 15,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Los Angeles',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/tag.svg",
                        width: 38,
                        height: 15,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        price,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/area.svg",
                        width: 38,
                        height: 15,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        houseSize,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/bath.svg",
                            width: 38,
                            height: 15,
                          ),
                          Text(
                            '$bedroomCount',
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey),
                          ),
                          const SizedBox(width: 25),
                          SvgPicture.asset(
                            "assets/images/bed.svg",
                            width: 38,
                            height: 15,
                          ),
                          Text(
                            '$bedroomCount',
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const SizedBox(height: 0),
                  // Row(
                  //   children: [
                  //     const Icon(Icons.bed, size: 16, color: Colors.grey),
                  //     const SizedBox(width: 5),
                  //     Text(
                  //       '$bedroomCount',
                  //       style:
                  //           const TextStyle(fontSize: 14, color: Colors.grey),
                  //     ),
                  //     const SizedBox(width: 20),
                  //     const Icon(Icons.bathtub, size: 16, color: Colors.grey),
                  //     const SizedBox(width: 5),
                  //     Text(
                  //       '$bathroomCount',
                  //       style:
                  //           const TextStyle(fontSize: 14, color: Colors.grey),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            // More Options Icon
            IconButton(
              onPressed: () {
                // Handle more options
              },
              icon: const Icon(Icons.more_vert),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
