import 'package:flutter/material.dart';

// Sebuah StatelessWidget yang digunakan untuk menampilkan layar dinamis yang dihasilkan secara berulang.
class GeneratedScreen extends StatelessWidget {
  // Nomor layar saat ini.
  final int screenNumber;
  // Total jumlah layar yang tersedia.
  final int totalScreens;

  // Konstruktor untuk menerima parameter `screenNumber` dan `totalScreens`.
  const GeneratedScreen({
    super.key,
    required this.screenNumber,
    required this.totalScreens,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold menyediakan struktur dasar untuk UI layar, seperti AppBar dan body.
      appBar: AppBar(
        // Judul AppBar menampilkan nomor layar saat ini.
        title: Text('Screen $screenNumber'),
        // Tombol "kembali" di AppBar untuk kembali ke layar awal.
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigasi ke rute utama ('/') dengan menghapus semua rute sebelumnya dari tumpukan.
            Navigator.pushNamedAndRemoveUntil(
              context, 
              '/', 
              (route) => false,
              arguments: 'Hello from screen $screenNumber', // Mengirim argumen ke rute tujuan.
            );
          },
        ),
      ),
      body: Center(
        // Kolom berisi elemen UI layar yang disejajarkan di tengah.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Teks yang menunjukkan nomor layar saat ini.
            Text(
              'This is screen $screenNumber',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20), // Jarak vertikal antar elemen.
            // Tombol untuk kembali ke layar pertama.
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context, 
                  '/', 
                  (route) => false,
                  arguments: 'Hello from screen $screenNumber', // Mengirim argumen ke rute tujuan.
                );
              },
              child: const Text('Back to First Screen'),
            ),
            const SizedBox(height: 20), // Jarak vertikal antar elemen.
            // Jika nomor layar saat ini lebih kecil dari total layar, tampilkan tombol ke layar berikutnya.
            if (screenNumber < totalScreens)
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke layar berikutnya dengan membuat instance baru `GeneratedScreen`.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GeneratedScreen(
                        screenNumber: screenNumber + 1, // Nomor layar berikutnya.
                        totalScreens: totalScreens, // Tetap menggunakan total layar yang sama.
                      ),
                    ),
                  );
                },
                child: Text('Go to screen ${screenNumber + 1}'), // Label tombol dengan nomor layar berikutnya.
              ),
            const SizedBox(height: 5), // Jarak vertikal kecil antar elemen.
            // Jika nomor layar saat ini lebih besar dari 1, tampilkan tombol ke layar sebelumnya.
            if (screenNumber > 1)
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke layar sebelumnya dengan membuat instance baru `GeneratedScreen`.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GeneratedScreen(
                        screenNumber: screenNumber - 1, // Nomor layar sebelumnya.
                        totalScreens: totalScreens, // Tetap menggunakan total layar yang sama.
                      ),
                    ),
                  );
                },
                child: Text('Go to screen ${screenNumber - 1}'), // Label tombol dengan nomor layar sebelumnya.
              ),
          ],
        ),
      ),
    );
  }
}
