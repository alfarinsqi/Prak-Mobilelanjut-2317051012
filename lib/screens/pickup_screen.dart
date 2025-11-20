import 'package:flutter/material.dart';
import 'shortcake_series_screen.dart'; // pastikan kamu buat file ini

class PickupScreen extends StatelessWidget {
  const PickupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFD8A8A8),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pickup",
              style: TextStyle(fontSize: 12, color: Colors.black87),
            ),
            Text(
              "Menu Selection",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.search, color: Colors.black87),
          SizedBox(width: 16),
          Icon(Icons.shopping_cart_outlined, color: Colors.black87),
          SizedBox(width: 16),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // LOGO SECTION
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD8A8A8),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/the_harvest_logo.png',
                        height: 35,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.black26, width: 1),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/the_harvest_express.png',
                        height: 35,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // GRID MENU
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.78,
              children: [
                _menuCard(
                  image: 'assets/images/best_deals.jpg',
                  title: 'Best Deals!',
                  subtitle: 'Treat yourself to the finest deals...',
                  onTap: () {},
                ),
                _menuCard(
                  image: 'assets/images/bread_doughnut.jpg',
                  title: 'Bread & Doughnut',
                  subtitle: 'Soft fluffy bites made with love...',
                  onTap: () {},
                ),
                _menuCard(
                  image: 'assets/images/viennoiserie.jpg',
                  title: 'Viennoiserie Series',
                  subtitle: 'A delightful collection of buttery...',
                  onTap: () {},
                ),
                _menuCard(
                  image: 'assets/images/shortcake.jpg',
                  title: 'The Shortcake Series',
                  subtitle: 'Discover our lineup of layered cakes...',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ShortcakeSeriesScreen(),
                      ),
                    );
                  },
                ),
                _menuCard(
                  image: 'assets/images/chocolate_cake.jpg',
                  title: 'Chocolate Cake',
                  subtitle: 'Rich, decadent, and simply divine...',
                  onTap: () {},
                ),
                _menuCard(
                  image: 'assets/images/fruit_cake.jpg',
                  title: 'Fruit Cake',
                  subtitle: 'Fresh fruits meet fluffy cake layers...',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // CARD MENU
  Widget _menuCard({
    required String image,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
