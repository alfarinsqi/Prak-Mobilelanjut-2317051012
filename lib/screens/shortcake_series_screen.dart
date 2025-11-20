import 'package:flutter/material.dart';
import 'lychee_shortcake_detail.dart'; // import screen detail baru

class ShortcakeSeriesScreen extends StatelessWidget {
  const ShortcakeSeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cakes = [
      {
        "name": "Strawberry Shortcake Portion",
        "price": "Starting from Rp 53.000",
        "image": "assets/images/strawberry_shortcake_portion.jpg"
      },
      {
        "name": "Choco Banana Shortcake Portion",
        "price": "Starting from Rp 53.000",
        "image": "assets/images/choco_banana_shortcake_portion.jpg"
      },
      {
        "name": "Lychee Shortcake Portion",
        "price": "Starting from Rp 53.000",
        "image": "assets/images/lychee_shortcake_portion.jpg"
      },
      {
        "name": "Strawberry Shortcake New",
        "price": "Starting from Rp 378.000",
        "image": "assets/images/strawberry_shortcake_new.jpg"
      },
      {
        "name": "Peach Shortcake New",
        "price": "Starting from Rp 378.000",
        "image": "assets/images/peach_shortcake_new.jpg"
      },
      {
        "name": "Choco Banana Shortcake New",
        "price": "Starting from Rp 378.000",
        "image": "assets/images/choco_banana_shortcake_new.jpg"
      },
    ];

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
            Text("Pickup - Menu Selection",
                style: TextStyle(fontSize: 12, color: Colors.black87)),
            Text("The Harvest",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black87)),
          ],
        ),
        actions: const [
          Icon(Icons.search, color: Colors.black87),
          SizedBox(width: 16),
          Icon(Icons.shopping_cart_outlined, color: Colors.black87),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.black26),
              ),
              child: const Text(
                "The Shortcake Series",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                itemCount: cakes.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  final cake = cakes[index];
                  final isLychee = cake["name"] == "Lychee Shortcake Portion";

                  return GestureDetector(
                    onTap: () {
                      if (isLychee) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const LycheeShortcakeDetailScreen(),
                          ),
                        );
                      }
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              cake["image"]!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          cake["name"]!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.brown,
                          ),
                        ),
                        Text(
                          cake["price"]!,
                          style: const TextStyle(
                              color: Colors.black54, fontSize: 12.5),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
