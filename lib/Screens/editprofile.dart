import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/constants.dart';
import 'package:uzaar_market/Screens/home.dart';
import 'package:uzaar_market/mainScreen.dart';
import 'package:uzaar_market/navBar.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
          ' EditProfile',
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
                const SizedBox(height: 110),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Navbar(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF450e8b),
                    shadowColor: Colors.black,
                    elevation: 5,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Save Changes',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
