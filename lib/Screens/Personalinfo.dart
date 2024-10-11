import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/constants.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
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
                    borderSide:
                        const BorderSide(color: ConstantColor.lightgreyColor)),
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
                    borderSide:
                        const BorderSide(color: ConstantColor.lightgreyColor)),
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
                    borderSide:
                        const BorderSide(color: ConstantColor.lightgreyColor)),
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
                    borderSide:
                        const BorderSide(color: ConstantColor.lightgreyColor)),
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
                    borderSide:
                        const BorderSide(color: ConstantColor.lightgreyColor)),
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
          ],
        ),
      ),
    );
  }
}
