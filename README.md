# Submission untuk Kelas Flutter Expert

Bisa kamu cek disini untuk repository Githubnya:
https://github.com/sarifht/submission-flutter-expert.git

## Petunjuk Branch

Pada branch main, itu adalah kode yang terakhir diperbaharui. Jika kamu ingin melihat kode submission-1 dan submission-2 silahkan berganti branch. Cara pindah branch:

```bash
git checkout submission-1
```

## Cara Running Project

Silahkan periksa versi Flutter punyamu terlebih dahulu, biar lebih aman silahkan jalankan perintah berikut:

```bash
flutter upgrade
```

Lalu install dependensi, bisa pake "flutter pub get" tapi saya lebih menyarakan perintah berikut:

```bash
flutter pub upgrade
```

Silahkan jalankan device android emulator-nya dan pergi ke file main.dart, lalu klik run.

## Peringatan

Usahakan tidak mengirim keseluruhan kode dalam repo ini sebagai submission pribadi atau meng-copy keseluruhan kode, karena khawatir submissionmu akan ditolak atau terkena suspend akun dari pihak Dicoding.

...

Ditulis oleh: Sarif Hidayatullah

---

Tulisan dibawah ini, bawaan dari Readme Dicoding

# a199-flutter-expert-project

Repository ini merupakan starter project submission kelas Flutter Expert Dicoding Indonesia.

---

## Tips Submission Awal

Pastikan untuk memeriksa kembali seluruh hasil testing pada submissionmu sebelum dikirimkan. Karena kriteria pada submission ini akan diperiksa setelah seluruh berkas testing berhasil dijalankan.

## Tips Submission Akhir

Jika kamu menerapkan modular pada project, Anda dapat memanfaatkan berkas `test.sh` pada repository ini. Berkas tersebut dapat mempermudah proses testing melalui _terminal_ atau _command prompt_. Sebelumnya menjalankan berkas tersebut, ikuti beberapa langkah berikut:

1. Install terlebih dahulu aplikasi sesuai dengan Operating System (OS) yang Anda gunakan.

   - Bagi pengguna **Linux**, jalankan perintah berikut pada terminal.

     ```
     sudo apt-get update -qq -y
     sudo apt-get install lcov -y
     ```

   - Bagi pengguna **Mac**, jalankan perintah berikut pada terminal.
     ```
     brew install lcov
     ```
   - Bagi pengguna **Windows**, ikuti langkah berikut.
     - Install [Chocolatey](https://chocolatey.org/install) pada komputermu.
     - Setelah berhasil, install [lcov](https://community.chocolatey.org/packages/lcov) dengan menjalankan perintah berikut.
       ```
       choco install lcov
       ```
     - Kemudian cek **Environtment Variabel** pada kolom **System variabels** terdapat variabel GENTHTML dan LCOV_HOME. Jika tidak tersedia, Anda bisa menambahkan variabel baru dengan nilai seperti berikut.
       | Variable | Value|
       | ----------- | ----------- |
       | GENTHTML | C:\ProgramData\chocolatey\lib\lcov\tools\bin\genhtml |
       | LCOV_HOME | C:\ProgramData\chocolatey\lib\lcov\tools |

2. Untuk mempermudah proses verifikasi testing, jalankan perintah berikut.
   ```
   git init
   ```
3. Kemudian jalankan berkas `test.sh` dengan perintah berikut pada _terminal_ atau _powershell_.
   ```
   test.sh
   ```
   atau
   ```
   ./test.sh
   ```
   Proses ini akan men-_generate_ berkas `lcov.info` dan folder `coverage` terkait dengan laporan coverage.
4. Tunggu proses testing selesai hingga muncul web terkait laporan coverage.
