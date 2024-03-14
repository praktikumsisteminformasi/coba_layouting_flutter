import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // Function 'runApp' dipakai untuk menjalankan class utama aplikasi, yaitu class 'AplikasiSaya'
  runApp(const AplikasiSaya());
}

// Ini adalah class utama aplikasi kita, yaitu 'AplikasiSaya'
class AplikasiSaya extends StatelessWidget {
  const AplikasiSaya({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget 'MateriapApp' sebagai Widget utama aplikasi kita
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(), // Kita set font aplikasi kita pakai font 'Poppins' dari package GoogleFonts
      ),

      // 'Scaffold' adalah Widget untuk membuat struktur aplikasi yang terdiri dari App Bar, Body, dan Bottom Navigation Bar
      home: Scaffold(
        // Ini App Bar, diisi menggunakan Widget 'AppBar'
        appBar: AppBar(
          title: const Text('INFORJEK', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: const Color(0xff4a8bc2),
        ),

        // Ini Body, isi utama dari aplikasi kita
        // Kita pakai Widget 'ListView' agar halaman kita bisa di-scroll
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // Bagian 'Informasi'
            const Card(
              color: Colors.blueAccent,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informasi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Angkatan 2020 dapat diskon 20% untuk layanan Info Food.',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),

            // Kasih space kosong pakai Widget 'SizedBox'
            const SizedBox(height: 20,),

            // Tombol-tombol layanan
            // karena tombol-tombol nya disusun secara horizontal, maka kita pakai Widget 'Row'
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tombol layanan 'Info Ride'
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white
                  ),
                  child: const Text('Info Ride')
                ),
                // Tombol layanan 'Info Food'
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white
                  ),
                  child: const Text('Info Food')
                ),
                // Tombol layanan 'Info Send'
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white
                  ),
                  child: const Text('Info Send')
                ),
              ],
            ),

            // Kasih space kosong pakai Widget 'SizedBox'
            const SizedBox(height: 20,),

            // Tempat, Makanan, dan Barang terbaik
            // Karena card-card nya disusun secara vertikal, maka kita pakai Widget 'Column'
            const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Tempat paling banyak dikunjungi
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tempat paling banyak dikunjungi',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                        ),
                        SizedBox(height: 10,),
                        Text('Gedung Teknik Baru'),
                      ],
                    ),
                  ),
                ),

                // Makanan paling banyak dipesan
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Makanan paling banyak dipesan',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                        ),
                        SizedBox(height: 10,),
                        Text('Ayam Ganja'),
                      ],
                    ),
                  ),
                ),

                // Barang paling banyak dikirim
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Barang paling banyak dikirim',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                        ),
                        SizedBox(height: 10,),
                        Text('Baju PDH Inforsa'),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}