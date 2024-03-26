import 'package:coba_layouting/pages/home_page.dart';
import 'package:coba_layouting/pages/info_ride_page.dart';
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

      routes: {
        '/': (context) => const HomePage(),
        '/info-ride': (context) => const InfoRidePage()
      },
    );
  }
}