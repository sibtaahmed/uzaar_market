import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> categories = [
    'Products',
    'Services',
    // 'Housing',
  ];
  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          forceMaterialTransparency: true,
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset('assets/images/menu.svg'),
            onPressed: () {},
          ),
          title: const Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
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
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Image.asset(
                              'assets/images/lisa1.png',
                              // height: 80,
                            )),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      ConstantColor.primaryColor,
                                      ConstantColor.orangeColor
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: SvgPicture.asset(
                                  'assets/images/camera.svg',
                                  height: 20,
                                  width: 20,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  // TextButton(onPressed: onPressed, child: child),
                  Center(
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const Signup()));
                            },
                            child: const Text(
                              'Apply for Verification',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color(0xFF450e8b)),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/Star.svg',
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            SvgPicture.asset(
                              'assets/images/Star.svg',
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            SvgPicture.asset(
                              'assets/images/Star.svg',
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            SvgPicture.asset(
                              'assets/images/Star.svg',
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            SvgPicture.asset(
                              'assets/images/Star.svg',
                              height: 24,
                              width: 24,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '(14)',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ),
                        // buttons
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Category Tabs
                              SizedBox(
                                height: 50,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: categories.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: index == selectedTabIndex
                                              ? const LinearGradient(
                                                  colors: [
                                                    ConstantColor.primaryColor,
                                                    ConstantColor.orangeColor
                                                  ],
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                )
                                              : LinearGradient(
                                                  colors: [
                                                    Colors.grey[300]!,
                                                    Colors.grey[300]!
                                                  ],
                                                ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              selectedTabIndex =
                                                  index; // Update the selected tab index
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            shape: const StadiumBorder(),
                                            backgroundColor: Colors.transparent,
                                            shadowColor: Colors.transparent,
                                            foregroundColor:
                                                index == selectedTabIndex
                                                    ? Colors.white
                                                    : Colors.grey,
                                          ),
                                          child: Text(categories[index]),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),

                              Expanded(
                                child:
                                    getScreenForSelectedTab(), // Display screen based on selected tab
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'First Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: const Text(
                        'First Name',
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
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Last Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: const Text(
                        'Last Name',
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
                          "assets/images/person.svg",
                        ),
                      ),
                    ),
                  ),
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
                          "assets/images/email.svg",
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Phone Number',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      label: const Text(
                        '+91 1234567890',
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
                          "assets/images/call.svg",
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Location',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      label: const Text(
                        'Your Address here',
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
                  // const SizedBox(height: 40),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // Navigator.push(
                  //     //     context,
                  //     //     MaterialPageRoute(
                  //     //       builder: (context) => const Navbar(),
                  //     //     ));
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: const Color(0xFF450e8b),
                  //     shadowColor: Colors.black,
                  //     elevation: 5,
                  //     padding: const EdgeInsets.symmetric(
                  //         horizontal: 30, vertical: 15),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(25),
                  //     ),
                  //   ),
                  //   child: const Center(
                  //     child: Text(
                  //       'Signup',
                  //       style: TextStyle(color: Colors.white, fontSize: 18),
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Center(
                  //     child: TextButton(
                  //         onPressed: () {
                  //           // Navigator.push(
                  //           //     context,
                  //           //     MaterialPageRoute(
                  //           //         builder: (context) => const Signup()));
                  //         },
                  //         child: const Text(
                  //           'Skip for now',
                  //           style: TextStyle(
                  //               decoration: TextDecoration.underline,
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 14,
                  //               color: Color(0xFF450e8b)),
                  //         )),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget getScreenForSelectedTab() {
    switch (selectedTabIndex) {
      case 0:
        return const PersonalInfo(); // Replace with your Products screen widget
      case 1:
        return const Reviews(); // Replace with your Services screen widget
      // case 2:
      //   return const HousingCatagory(); // Replace with your Housing screen widget
      default:
        return const PersonalInfo();
    }
  }
}

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Personal Info'),
    ));
  }
}

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Reviews'),
    ));
  }
}
