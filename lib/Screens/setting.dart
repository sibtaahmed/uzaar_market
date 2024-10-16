import 'package:flutter/material.dart';
import 'package:uzaar_market/constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // Toggles for each card
  bool isOrderStatusToggled1 = false;
  bool isOrderStatusToggled2 = false;
  bool isOrderStatusToggled3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        // centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // First Card
            _buildSettingCard(
              title: 'Order Status',
              description: 'Get to know when your order status change',
              isToggled: isOrderStatusToggled1,
              onToggleChanged: (value) {
                setState(() {
                  isOrderStatusToggled1 = value;
                });
              },
            ),
            const SizedBox(height: 10),

            // Second Card (Same layout as the first)
            _buildSettingCard(
              title: 'Reviews',
              description: 'Get to know when someone add review.',
              isToggled: isOrderStatusToggled2,
              onToggleChanged: (value) {
                setState(() {
                  isOrderStatusToggled2 = value;
                });
              },
            ),
            const SizedBox(height: 10),

            // Third Card (Same layout as the first)
            _buildSettingCard(
              title: 'Offers',
              description: 'Get to know when someone send offer',
              isToggled: isOrderStatusToggled3,
              onToggleChanged: (value) {
                setState(() {
                  isOrderStatusToggled3 = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingCard({
    required String title,
    required String description,
    required bool isToggled,
    required Function(bool) onToggleChanged,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First Line: Title + Toggle Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Switch(
                  activeTrackColor: ConstantColor.primaryColor,
                  value: isToggled,
                  onChanged: onToggleChanged,
                  // activeColor:
                  //     ConstantColor.primaryColor, // Blue track when active
                  thumbColor: WidgetStateProperty.resolveWith<Color>(
                    (Set<WidgetState> states) {
                      if (states.contains(WidgetState.selected)) {
                        return Colors.white; // Red thumb when active
                      }
                      return Colors.white; // Grey thumb when inactive
                    },
                  ),
                  inactiveTrackColor:
                      Colors.grey.shade300, // Lighter grey track when inactive
                  trackOutlineColor:
                      const WidgetStatePropertyAll(Colors.transparent),
                ),
              ],
            ),
            const SizedBox(height: 2),
            // Second Line: Description
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(const MaterialApp(home: SettingsScreen()));
