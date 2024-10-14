import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzaar_market/Screens/listing_product_screen.dart';
import 'package:uzaar_market/Screens/myorders.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

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
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/lisa1.png',
                    )),
              ),
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
                // Navigate to My Orders screen
                Navigator.pop(context);
                // You can add navigation logic here
              },
            ),

            ListTile(
              leading: SvgPicture.asset('assets/images/setting.svg'),
              title: const Text('Settings',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () {
                // Navigate to Settings screen
                Navigator.pop(context);
                // You can add navigation logic here
              },
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/terms.svg'),
              title: const Text('Term of Use',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () {
                // Navigate to Settings screen
                Navigator.pop(context);
                // You can add navigation logic here
              },
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/privacy.svg'),
              title: const Text('Safety & Privacy',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () {
                // Navigate to Settings screen
                Navigator.pop(context);
                // You can add navigation logic here
              },
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/contact.svg'),
              title: const Text('Contact Us',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () {
                // Navigate to Settings screen
                Navigator.pop(context);
                // You can add navigation logic here
              },
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/about.svg'),
              title: const Text('About Us',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () {
                // Navigate to Settings screen
                Navigator.pop(context);
                // You can add navigation logic here
              },
            ),

            ListTile(
              leading: SvgPicture.asset('assets/images/logout.svg'),
              title: const Text('Logout',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onTap: () {
                // Handle Logout
                Navigator.pop(context);
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
}
