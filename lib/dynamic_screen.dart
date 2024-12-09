import 'package:flutter/material.dart';
import 'package:navigation_codelab/generated_screen.dart'; // Mengimpor layar yang akan digunakan untuk navigasi.

class DynamicScreen extends StatelessWidget {
  const DynamicScreen({super.key}); // Konstruktor StatelessWidget.

  @override
  Widget build(BuildContext context) {
    // Mengambil argumen yang diteruskan ke rute ini. Jika tidak ada, default ke 0.
    final int numberOfScreens =
        ModalRoute.of(context)?.settings.arguments as int? ?? 0;

    return Scaffold(
      // Scaffold memberikan struktur dasar layar.
      appBar: AppBar(
        // AppBar dengan judul tetap.
        title: const Text('Dynamic Screens'),
        leading: IconButton(
          // Tombol kembali di kiri atas AppBar.
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigasi ke rute utama ('/') dengan menghapus semua rute sebelumnya.
            Navigator.pushNamedAndRemoveUntil(
              context, 
              '/', 
              (route) => false,
              arguments: 'Hello from dynamic screens', // Mengirim argumen ke rute tujuan.
            );
          },
        ),
      ),
      // Body layar menggunakan ListView.builder untuk menampilkan daftar layar secara dinamis.
      body: ListView.builder(
        itemCount: numberOfScreens, // Jumlah item sesuai dengan jumlah layar.
        itemBuilder: (context, index) {
          // Membuat widget untuk setiap item dalam daftar.
          return Card(
            // Membungkus setiap item dalam widget Card untuk menampilkan desain lebih menarik.
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Memberikan margin antar Card.
            child: ListTile(
              // Menampilkan teks dengan nomor layar.
              title: Text('Screen ${index + 1}'),
              trailing: IconButton(
                // Tombol di sebelah kanan untuk menavigasi ke layar berikutnya.
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  // Navigasi ke layar `GeneratedScreen` dengan nomor layar yang sesuai.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GeneratedScreen(
                        screenNumber: index + 1, // Nomor layar (dimulai dari 1, bukan 0).
                        totalScreens: numberOfScreens, // Total layar yang tersedia.
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
