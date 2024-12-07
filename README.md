# Routes & Navigation Codelabs

## Lab Assignment Requirements

Dalam pengembangan apliaksi kali ini, telah ditambahkan:

### Advanced Route Management

- Satu halaman tambahan.
- Penamaan routing.
- Menggunakan passing arguments.
- Menambahkan button "Go Back" yang ditandai dengan gambar arrow_back "←" pada setiap halaman.

### Complex Navigation Structure

- Mengimplementasikan Navigation Bar dengan opsi navigasi ke halaman `First Screen`, `Second Screen`, dan `Third Screen`.

### Dynamic Routing

- Menambahkan `TextField` pada halaman `First Screen` yang berfungsi untuk mengenerate halaman baru sesuai dengan jumlah yang diinput oleh user.

### Error Handling and User Feedback

- Menambahkan error handling pada `TextField` untuk membatasi jumlah input pengguna hingga maksimal 1000.
- Memberikan feedback berupa `SnackBar` untuk menginformasikan kembali syarat input yang diperbolehkan.

## Cara Install dan Pakai

### Langkah-langkah Instalasi
1. Clone repositori ini ke komputer Anda:
   ```bash
   git clone git@github.com:Dericknorlan/routes-and-navigation-LabAssignment5.git
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
Dalam Lab Assignment kali ini saya mengalami kendala dalam menambahkan screen baru. Karena, emnambahkan screen abru secara dynamic merupakan hal yang abru dan sangat ebrbeda dari sebelumnya. Namun dengan melihat berbagai pendekatan dari teman dan dikumentasi dari flutter saya mulai mengerti bagaimana cara menambahkan screen secara dynamic.

### Pendekatan
Dalam mengerjakan Lab Assigment ini, saya melanjutkan kode dari Lab Activity sebelumnya yang dapat dilihat pada repositories saya terkait routes and anvigation dengan sedikit perubahan. Selanjutnya saya mulai dengan membuat `TextField` yang berfungsi untuk memasukkan jumlah halaman yang ingin digenerate, karena semua aksi generate berawal dari kolom teks ini. Kemudian saya emnghilangkan drawer agar tidak membingungkan anatara navbar dan drawer kemudian menambahkan tombol back di setiap screen selain screen pertama.
