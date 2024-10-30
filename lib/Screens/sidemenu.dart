import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uzaar_market/Screens/aboutus.dart';
import 'package:uzaar_market/Screens/contactus.dart';

import 'package:uzaar_market/Screens/myorders.dart';
import 'package:uzaar_market/Screens/safety&privacy.dart';
import 'package:uzaar_market/Screens/sales_orders.dart';
import 'package:uzaar_market/Screens/setting.dart';
import 'package:uzaar_market/Screens/termsofuse.dart';
import 'package:uzaar_market/constants.dart';
import 'package:uzaar_market/login.dart';
import 'package:uzaar_market/main.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  one() async {
    prefs = await SharedPreferences.getInstance();
    userID = prefs!.getString('userID');
    userName = prefs!.getString('userName');
    userEmail = prefs!.getString('userEmail');
    userPhone = prefs!.getString('userPhone');
    userImage = prefs!.getString('userImage');
    print('userID: $userID');
    print('userName: $userName');
    print('userEmail: $userEmail');
    print('userPhone: $userPhone');
    print('userImage: $userImage');
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    one();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView(
          children: <Widget>[
            // Drawer header
            //   const DrawerHeader(
            //     // decoration: BoxDecoration(),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         CircleAvatar(
            //           radius: 40,
            //           backgroundImage: AssetImage('assets/images/Logo.png'),
            //         ),
            //       ],
            //     ),
            //   ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40.0,
                right: 20,
                bottom: 10,
              ),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage("$baseImageURL$userImage"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                right: 20,
              ),
              child: Center(
                  child: Text(
                '$userName',
                style: const TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
            const SizedBox(
              height: 25,
            ),
            // Menu items
            ListTile(
              leading: SvgPicture.asset('assets/images/orders.svg'),
              title: const Text('My Orders',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () {
                // Navigate to My Orders screen
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyOrdersScreen()));
                // You can add navigation logic here
              },
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/orders.svg'),
              title: const Text('Sales Orders',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SalesOrdersScreen()));
              },
            ),

            ListTile(
              leading: SvgPicture.asset('assets/images/setting.svg'),
              title: const Text('Settings',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsScreen()));
              },
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/terms.svg'),
              title: const Text('Term of Use',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TermsOfUse()));
              },
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/privacy.svg'),
              title: const Text('Safety & Privacy',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Safety()));
              },
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/contact.svg'),
              title: const Text('Contact Us',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () {
                // Navigate to Settings screen
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ContactUs()));
                // You can add navigation logic here
              },
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/about.svg'),
              title: const Text('About Us',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Aboutus()));
              },
            ),

            ListTile(
              leading: SvgPicture.asset('assets/images/logout.svg'),
              title: const Text('Logout',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () async {
                await removeDataFormSharedPreferences();
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const Login()),
                  (Route<dynamic> route) => false,
                );
                // Handle Logout

                // You can add logout logic here
              },
            ),

            const SizedBox(
              height: 70,
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/delete.svg'),
              title: const Text('Delete Account',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () {
                // Handle Logout
                Navigator.pop(context);
                // You can add logout logic here
              },
            ),
          ],
        ),
      ),
    );
  }

  removeDataFormSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
    await prefs?.clear();
    prefs?.remove('userID');
    setState(() {});
  }
}
