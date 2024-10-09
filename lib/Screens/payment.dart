// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:uzaar_market/constants.dart';

// class Payment extends StatefulWidget {
//   const Payment({super.key});

//   @override
//   State<Payment> createState() => _PaymentState();
// }

// class _PaymentState extends State<Payment> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           forceMaterialTransparency: true,
//           title: const Text(
//             'Payment',
//             style: TextStyle(
//                 color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
//           ),
//           backgroundColor: Colors.white,
//           elevation: 0,
//         ),
//         body: SingleChildScrollView(
//             physics: const BouncingScrollPhysics(),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30),
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           width: 149,
//                           height: 54,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border.all(
//                                   color: ConstantColor.primaryColor, width: 2)),
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 21),
//                             child: Row(
//                               children: [
//                                 SvgPicture.asset(
//                                   ConstantIconPath.paypalSvgPath,
//                                   width: 34,
//                                   height: 32,
//                                 ),
//                                 const SizedBox(width: 10),
//                                 const Text(
//                                   'Pay Pal',
//                                   style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w600,
//                                       color: ConstantColor.primaryColor),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 10),
//                         Container(
//                           width: 149,
//                           height: 54,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border.all(
//                                   color: ConstantColor.lightgreyColor,
//                                   width: 2)),
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 30),
//                             child: Row(
//                               children: [
//                                 SvgPicture.asset(
//                                   ConstantIconPath.zelleSvgPath,
//                                   width: 34,
//                                   height: 32,
//                                 ),
//                                 const SizedBox(width: 10),
//                                 const Text(
//                                   'Zelle',
//                                   style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w600,
//                                       color: ConstantColor.primaryColor),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Text(
//                         'Email',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     TextField(
//                       decoration: InputDecoration(
//                         label: const Text(
//                           'username@gmail.com',
//                           style: TextStyle(color: Colors.grey),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(25),
//                             borderSide: const BorderSide(
//                                 color: ConstantColor.lightgreyColor)),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(25),
//                           borderSide: const BorderSide(
//                             color: Color.fromARGB(255, 21, 21, 22),
//                             width: 1.0,
//                           ),
//                         ),
//                         prefixIcon: Padding(
//                           padding: const EdgeInsets.all(15.0),
//                           child: SvgPicture.asset(
//                             ConstantIconPath.emailSvgPath,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Text(
//                         'Password',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         label: const Text(
//                           '*******',
//                           style: TextStyle(color: Colors.grey),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(25),
//                             borderSide: const BorderSide(
//                                 color: ConstantColor.lightgreyColor)),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(25),
//                           borderSide: const BorderSide(
//                             color: Color.fromARGB(255, 21, 21, 22),
//                             width: 1.0,
//                           ),
//                         ),
//                         suffixIcon: const Icon(Icons.visibility_off,
//                             color: Color(0xFF450e8b)),
//                         prefixIcon: Padding(
//                           padding: const EdgeInsets.all(15.0),
//                           child: SvgPicture.asset(
//                             "assets/images/passwordicon.svg",
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.45,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const Payment(),
//                             ),
//                           );
//                         },
//                         child: Container(
//                           height: 54,
//                           width: MediaQuery.of(context).size.width,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(30.0),
//                             color: ConstantColor.primaryColor,
//                           ),
//                           child: const Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text("Buy Now",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold)),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     )
//                   ]),
//             )));
//   }
// }

// // here

// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
// // import 'package:uzaar_market/constants.dart';

// // class PaymentMethods extends StatelessWidget {
// //   // Define a list of payment methods with their SVG paths and titles
// //   final List<Map<String, String>> paymentMethods = [
// //     {
// //       'iconPath':
// //           'assets/images/paypal.svg', // Replace with ConstantIconPath.paypalSvgPath
// //       'title': 'Pay Pal',
// //     },
// //     {
// //       'iconPath':
// //           'assets/images/zelle.svg', // Replace with ConstantIconPath.zelleSvgPath
// //       'title': 'Zelle',
// //     },
// //     {
// //       'iconPath': 'assets/images/paypal.svg', // Replace with a third SVG icon
// //       'title': 'Venmo',
// //     },
// //   ];

// //   PaymentMethods({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return SizedBox(
// //       // height: 100, // Set a fixed height for the container to contain the list
// //       child: ListView.builder(
// //         scrollDirection: Axis.horizontal,
// //         itemCount: paymentMethods.length,
// //         itemBuilder: (context, index) {
// //           return Padding(
// //             padding: const EdgeInsets.only(right: 10),
// //             child: Container(
// //               width: 149,
// //               height: 54,
// //               decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(10),
// //                 border: Border.all(
// //                   color: index == 0
// //                       ? ConstantColor.primaryColor
// //                       : ConstantColor.lightgreyColor, // Change border color
// //                   width: 2,
// //                 ),
// //               ),
// //               child: Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 21),
// //                 child: Row(
// //                   children: [
// //                     SvgPicture.asset(
// //                       paymentMethods[index]['iconPath']!,
// //                       width: 34,
// //                       height: 32,
// //                     ),
// //                     const SizedBox(width: 10),
// //                     Text(
// //                       paymentMethods[index]['title']!,
// //                       style: const TextStyle(
// //                         fontSize: 18,
// //                         fontWeight: FontWeight.w600,
// //                         color: ConstantColor.primaryColor,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

// all changes

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uzaar_market/constants.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: const Text(
            'Payment',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PaymentMethods(), // Replaced Row with PaymentMethods widget
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Email',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        label: const Text(
                          'username@gmail.com',
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
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset(
                            ConstantIconPath.emailSvgPath,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Password',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: const Text(
                          '*******',
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
                        suffixIcon: const Icon(Icons.visibility_off,
                            color: Color(0xFF450e8b)),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset(
                            "assets/images/passwordicon.svg",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.45,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Payment(),
                            ),
                          );
                        },
                        child: Container(
                          height: 54,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: ConstantColor.primaryColor,
                          ),
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Buy Now",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
            )));
  }
}

// PaymentMethods widget for horizontal scrolling of payment options
class PaymentMethods extends StatelessWidget {
  // Define a list of payment methods with their SVG paths and titles
  final List<Map<String, String>> paymentMethods = [
    {
      'iconPath': ConstantIconPath.paypalSvgPath,
      'title': 'Pay Pal',
    },
    {
      'iconPath': ConstantIconPath.zelleSvgPath,
      'title': 'Zelle',
    },
    {
      'iconPath': ConstantIconPath.paypalSvgPath, // Add third payment method
      'title': 'Cash',
    },
  ];

  PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70, // Set a fixed height for the ListView
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethods.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              width: 149,
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: index == 0
                      ? ConstantColor.primaryColor
                      : ConstantColor.lightgreyColor, // Change border color
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      paymentMethods[index]['iconPath']!,
                      width: 34,
                      height: 32,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      paymentMethods[index]['title']!,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: ConstantColor.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
