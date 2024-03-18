import 'package:flutter/material.dart';

class InfoRidePage extends StatefulWidget {
  const InfoRidePage({super.key});

  @override
  State<InfoRidePage> createState() => _InfoRidePageState();
}

class _InfoRidePageState extends State<InfoRidePage> {
  bool isLoading = false;

  void orderInfoRide() async {
    setState(() {
      isLoading = true;
    });

    // Fetch HTTP disini nanti
    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('INFORJEK', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color(0xff4a8bc2),
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // Titik jemput
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Titik jemput: Jl. Dari Sini No. 123'),
                border: OutlineInputBorder()
              ),
            ),

            const SizedBox(height: 20,),

            // Alamat tujuan
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Alamat tujuan: Jl. Kesini No. 321'),
                border: OutlineInputBorder()
              ),
            ),

            const SizedBox(height: 20,),

            // Pesan
            ElevatedButton(
              onPressed: isLoading ? null : orderInfoRide,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30)
              ),
              child: Builder(
                builder: (context) {
                  if (isLoading) {
                    return const Text('Memesan...', style: TextStyle(color: Colors.white),);
                  }

                  return const Row(
                    children: [
                      Icon(Icons.motorcycle, color: Colors.white, size: 28,), // Ini icon motor
                      SizedBox(width: 20,),
                      Text('Pesan sekarang', style: TextStyle(color: Colors.white),)
                    ],
                  );
                }
              )
            )
          ],
        ),
      )
    );
  }
}