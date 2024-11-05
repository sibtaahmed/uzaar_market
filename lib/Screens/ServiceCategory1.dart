// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:uzaar_market/constants.dart';

// class ServiceCategory1 extends StatefulWidget {
//   const ServiceCategory1({super.key});

//   @override
//   State<ServiceCategory1> createState() => _ServiceCategory1State();
// }

// class _ServiceCategory1State extends State<ServiceCategory1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           const SizedBox(height: 20),

//           // Question Text

//           // Category Buttons for Products, Services, Housing
//           // Row(
//           //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //   children: [
//           //     _buildOptionButton('Products', 0),
//           //     _buildOptionButton('Services', 1),
//           //     _buildOptionButton('Housing', 2),
//           //   ],
//           // ),
//           const SizedBox(height: 30),

//           // Upload Section
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text(
//                 'Upload or Take Picture',
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//               Container(
//                   height: 40,
//                   width: 40,
//                   decoration: BoxDecoration(
//                     gradient: const LinearGradient(colors: [
//                       ConstantColor.primaryColor,
//                       ConstantColor.orangeColor
//                     ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//                     // color: Colors.grey,
//                     borderRadius: BorderRadius.circular(100),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(6.0),
//                     child: SvgPicture.asset(
//                       'assets/images/camera.svg',
//                       height: 10,
//                       width: 10,
//                     ),
//                   )),
//             ],
//           ),
//           const SizedBox(height: 20),

//           // Placeholder for Image Upload
//           Expanded(
//             child: Center(
//               child: Container(
//                 height: 150,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   color: Colors.grey.shade100,
//                   borderRadius: BorderRadius.circular(15),
//                   border: Border.all(color: Colors.grey.shade300),
//                 ),
//                 child: IconButton(
//                   icon: SvgPicture.asset('assets/images/upload.svg'),
//                   iconSize: 10,
//                   onPressed: () {},
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uzaar_market/constants.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ServiceCategory1 extends StatefulWidget {
  const ServiceCategory1({super.key});

  @override
  State<ServiceCategory1> createState() => _ServiceCategory1State();
}

class _ServiceCategory1State extends State<ServiceCategory1> {
  final ImagePicker _picker = ImagePicker();
  final List<File> _images = [];

  Future<void> pickImages() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Choose Image Source"),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: ConstantColor.primaryColor,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () async {
                    Navigator.pop(context);
                    await pickFromGallery();
                  },
                  child: const Text("Gallery"),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: ConstantColor.primaryColor,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () async {
                    Navigator.pop(context);
                    await pickFromCamera();
                  },
                  child: const Text("Camera"),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Future<void> pickFromCamera() async {
    final XFile? capturedImage =
        await _picker.pickImage(source: ImageSource.camera);
    if (capturedImage != null) {
      if (_images.length >= 6) {
        Fluttertoast.showToast(
          msg: "You can select up to 6 images",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.black,
          textColor: Colors.white,
        );
      } else {
        setState(() {
          _images.add(File(capturedImage.path));
        });
      }
    }
  }

  Future<void> pickFromGallery() async {
    final List<XFile> pickedFiles = await _picker.pickMultiImage();
    if (_images.length + pickedFiles.length > 6) {
      Fluttertoast.showToast(
        msg: "You can select up to 6 images",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );
    } else {
      setState(() {
        _images.addAll(pickedFiles.map((file) => File(file.path)).toList());
      });
    }
  }

  void removeImage(int index) {
    setState(() {
      _images.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Text(
            "What do you want to sell?",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Upload or Take Picture',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      ConstantColor.primaryColor,
                      ConstantColor.orangeColor
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/images/camera.svg',
                    height: 24,
                    width: 24,
                  ),
                  onPressed: pickImages,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: pickImages,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/upload.svg',
                  width: 25,
                  height: 25,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Conditionally show either placeholder containers or image grid
          _images.isEmpty
              ? Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: List.generate(6, (index) {
                    return Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                    );
                  }),
                )
              : Expanded(
                  child: GridView.builder(
                    itemCount: _images.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.file(
                              _images[index],
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: GestureDetector(
                              onTap: () => removeImage(index),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.black54,
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(4),
                                child: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
