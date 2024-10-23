import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/constants.dart';
import 'package:uzaar_market/verifyemail.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          forceMaterialTransparency: true,
          elevation: 0,
          title: const Text(
            'Contact Us',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: SizedBox(
            height: double.infinity,
            child: Stack(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/images/contactus.png',
                            width: 110,
                            height: 140,
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Sellpad Market',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Center(
                          child: Text(
                            'info@sellpad.com',
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                        ),

                        // Name label and TextField
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Name',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            label: const Text(
                              'Enter your name',
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
                                ConstantIconPath.personSvgPath,
                              ),
                            ),
                          ),
                        ),

                        // Email label and TextField
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

                        // Message label and TextField
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Message',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextField(
                          maxLines: 3,
                          decoration: InputDecoration(
                            hintText: 'Your message here...',
                            hintStyle: const TextStyle(color: Colors.grey),
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
                        const SizedBox(
                          height: 90,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Verifyemail()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF450e8b),
                            shadowColor: Colors.black,
                            elevation: 5,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Send',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // ElevatedButton placed at the bottom end of the screen
              ],
            ),
          ),
        ));
  }
}
