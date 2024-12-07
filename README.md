# Routes & Navigation Codelabs

Branch project ini merupakan pengembangan lanjutan dari branch [`Lab-Activity-Routing-&-Navigation`](https://github.com/trfyrt/Routes-and-Navigation_Aaron-Kongdoh/tree/Lab-Activity-Routing-%26-Navigation). Pada branch ini ditambahkan beberapa fitur yang merupakan requirement dari tugas Session 5 Assignments - Navigation.

## Lab Assignment Requirements

Dalam pengembangan ini, telah ditambahkan:

### Advanced Route Management

- Satu halaman tambahan untuk memperluas fungsionalitas aplikasi.
- Penamaan routing untuk mempermudah pengelolaan navigasi antar halaman.
- Menggunakan arguments pada untuk meneruskan data antar halaman
- Menambahkan button "Go Back" yang ditandai dengan gambar arrow_back "←" pada setiap halaman yang mengantar kembali ke `First Screen`

### Complex Navigation Structure

- Mengimplementasikan Navigation Bar dengan opsi navigasi ke halaman `First Screen`, `Second Screen`, dan `Third Screen`.

### Dynamic Routing

- Menambahkan `TextField` pada halaman `First Screen` yang berfungsi untuk menghasilkan halaman baru sesuai dengan jumlah yang diinputkan oleh pengguna.

### Error Handling and User Feedback

- Menambahkan error handling pada `TextField` untuk membatasi jumlah input pengguna hingga maksimal 200.
- Memberikan feedback berupa `SnackBar` untuk menginformasikan kembali syarat input yang diperbolehkan.

## Cara Install dan Pakai

### Prasyarat
- Flutter SDK sudah terinstal di komputer Anda.
- Editor kode seperti Android Studio atau Visual Studio Code.

### Langkah-langkah Instalasi
1. Clone repositori ini ke komputer Anda:
   ```bash
   git clone https://github.com/trfyrt/Routes-and-Navigation_Aaron-Kongdoh.git
   ```
   
2. Navigasikan ke direktori proyek:
   ```bash
   cd navigation_codelab
   ```
   
3. Jalankan perintah berikut untuk menginstal dependensi:
   ```bash
   flutter pub get
   ```
   

### Cara Menjalankan Aplikasi
1. Buka terminal
2. Navigasikan ke direktori proyek Anda
3. Jalankan aplikasi dengan perintah berikut:
   ```bash
   flutter run
   ```

## Fitur
### Screens
- **First Screen**: Terdapat Title yang bertuliskan First Screen serta tombol yang berfungsi untuk berpindah ke halaman `Second Screen`
- **Second Screen**: Terdapat Title yang bertuliskan Second Screen serta tombol yang berfungsi untuk berpindah ke halaman `Third Screen`
- **Third Screen**: Terdapat Title yang bertuliskan Third Screen serta tombol yang berfungsi untuk berpindah kembali ke halaman `First Screen`
- **Dynamic Screen**: Terdapat Title yang bertuliskan Dymanic Screen serta list untuk ke halaman yang telah digenerate
- **Generated Screen**: Terdapat Title yang bertuliskan nomor screen, tulisan unique, tombol ke halaman selanjutnya dan sebelumnya, serta tombol kembali ke `First Screen`

### Named Routing
- `/`: Route untuk ke halaman pertama, `First Screen`
- `/second`: Route untuk ke halaman kedua, `Second Screen`
- `/third`: Route untuk ke halaman ketiga, `Third Screen`
- `/dynamic`: Route untuk ke halaman list screen yang tergenerate

## Tantangan dan Pendekatan
### Tantangan
Dalam Lab Assignment kali ini saya sedikit mengalami kendala dalam logika generate screen baru, sehingga membutuhkan waktu yang lebih lama untuk mencari tahu lebih dalam tentang hal tersebut. Mungkin saya mengalami kendala dalam memahami kata "Generate" pada assignment kali ini, sehingga saya berpikir akan kesulitan dalam proses pengerjaannya. Untuk mengatasi hal ini, saya berdiskusi kepada teman saya untuk meluruskan pemahaman saya. Selanjutnya dalam proses pengerjaan saya mengalami kendala dalam mengatur arguments yang diteruskan, sehingga membutuhkan lebih banyak waktu mengatur hal tersebut.

### Pendekatan
Dalam mengerjakan Lab Assigment ini, saya melanjutkan kode dari Lab Activity sebelumnya yang dapat dilihat pada branch [`Lab-Activity-Routing-&-Navigation`](https://github.com/trfyrt/Routes-and-Navigation_Aaron-Kongdoh/tree/Lab-Activity-Routing-%26-Navigation). Selanjutnya saya mulai dengan membuat `TextField` karena semua aksi generate berawal dari kolom teks ini. Dalam pembuatan `TextField` ini saya tidak merasa kesulitan karena sudah mempelajari controller pada Lab Activity sebelumnya yang menggunakan `UserController` dan `PasswordController` untuk login. Selanjutnya saya membuat halaman yang tergenerate dengan nama file `generated_screen.dart`. File ini saya buat dengan mengcopy sebagian besar dari UI `Second Screen`, namun mengganti judul serta isi konten berdasarkan nomor screen. Selanjutnya saya membuat halaman `dynamic` dengan tujuan menampilkan list dari halaman yang telah digenerate. Terakhir saya membuat error handling yang simpel dengan membatasi inputan user, serta memberikan user feedback dengan mengandalkan `SnackBar`.
