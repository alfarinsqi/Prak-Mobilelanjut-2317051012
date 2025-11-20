import 'package:flutter/material.dart';

class LycheeShortcakeDetailScreen extends StatelessWidget {
  const LycheeShortcakeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/lychee_shortcake_portion.jpg',
                    width: double.infinity,
                    height: 260,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 12,
                    left: 12,
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.7),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Color(0xFFB57D7D)),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Nama kue
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Lychee Shortcake Portion",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Deskripsi
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Fresh, light, and tea-riffic! This slice combines soft tea-infused sponge cake "
                  "with creamy mascarpone lychee filling and juicy lychee bits.\n"
                  "Topped with lychee cream, real lychee, and a touch of elegance from gold chocolate rose petals.\n\n"
                  "Perfect for a refreshing treat any time of day!\n\n",
                  style: TextStyle(color: Colors.black87, fontSize: 14, height: 1.5),
                ),
              ),

              // Weight bold
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "• Weight: 110g",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 14,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Harga
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Rp 53.000",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Tombol Add to Cart
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD8A8A8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      // aksi tombol beli
                    },
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
