import 'package:flutter/material.dart';
import 'pickup_screen.dart'; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting
            const Text(
              'Hi, Farinsq!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFB57D7D),
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              '0 Pts',
              style: TextStyle(
                color: Color(0xFFC48B8B),
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Start ordering and get points',
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 20),

            // Banner
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/shortcake_banner.jpg', // pastikan nama file sesuai
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            // Location
            Row(
              children: const [
                Icon(Icons.location_on, color: Color(0xFFB57D7D)),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'J6JV+XWR, Gedong Meneng...',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),

            // Menu
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _menuItem(Icons.delivery_dining, 'Delivery'),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PickupScreen()),
                    );
                  },
                  child: _menuItem(Icons.shopping_bag, 'PickUp'),
                ),
                _menuItem(Icons.takeout_dining, 'Take Away'),
                _menuItem(Icons.cake, 'Dine-In'),
              ],
            ),
            const SizedBox(height: 25),

            // membership section
            const Text(
              'Introducing',
              style: TextStyle(color: Color(0xFFB57D7D)),
            ),
            const Text(
              'Our New Membership',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/membership_banner.jpg', 
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),

      // Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: const Color(0xFFB57D7D),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Treats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.percent), label: 'Vouchers'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }

  static Widget _menuItem(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: const Color(0xFFF5EAEA),
          child: Icon(icon, color: Color(0xFFB57D7D)),
        ),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(color: Colors.black87)),
      ],
    );
  }
}
