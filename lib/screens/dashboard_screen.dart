import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static String route = '/dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Latar belakang abu-abu muda
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        // supaya bisa discroll kalau konten panjang
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Teks Sapaan
            const Text(
              'Selamat Datang,',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const Text(
              'PAYYINN',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),

            // --- Kartu Informasi Utama ---
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Baris: ikon & teks saldo
                  Row(
                    children: [
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.grey[500],
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Saldo Saat Ini',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Rp 100.000.000',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 24),

                  // Tombol Aksi
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1B8FFF),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Lihat Detail Transaksi',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                  const Text(
                    'Riwayat Transaksi',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // --- Riwayat Transaksi ---
                  ListView.separated(
                    shrinkWrap: true, // penting biar gak infinite height
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      final transactions = [
                        {
                          'icon': Icons.shopping_cart,
                          'color': Colors.green,
                          'title': 'Pembelian Tokopedia',
                          'date': '25 September 2025',
                          'amount': '- Rp 350.000',
                          'isExpense': true,
                        },
                        {
                          'icon': Icons.phone_android,
                          'color': Colors.blue,
                          'title': 'Isi Pulsa Telkomsel',
                          'date': '22 September 2025',
                          'amount': '- Rp 100.000',
                          'isExpense': true,
                        },
                        {
                          'icon': Icons.attach_money,
                          'color': Colors.orange,
                          'title': 'Transfer Masuk dari Aloy',
                          'date': '20 September 2025',
                          'amount': '+ Rp 2.500.000',
                          'isExpense': false,
                        },
                      ];

                      final tx = transactions[index];
                      return ListTile(
                        leading: Icon(
                          tx['icon'] as IconData,
                          color: tx['color'] as Color,
                          size: 28,
                        ),
                        title: Text(tx['title'] as String),
                        subtitle: Text(tx['date'] as String),
                        trailing: Text(
                          tx['amount'] as String,
                          style: TextStyle(
                            color: (tx['isExpense'] as bool)
                                ? Colors.red
                                : Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
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
