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
                label: Text('Titik jemput'),
                border: OutlineInputBorder()
              ),
            ),

            const SizedBox(height: 20,),

            // Alamat tujuan
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Alamat tujuan'),
                border: OutlineInputBorder()
              ),
            ),

            const SizedBox(height: 20,),

            ElevatedButton(
              onPressed: isLoading ? null : orderInfoRide,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                disabledBackgroundColor: Colors.lightGreenAccent
              ),
              child: Builder(
                builder: (context) {
                  if (isLoading) {
                    return const SizedBox(
                      width: 30,
                      height: 30,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    );
                  }
                  
                  return const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.motorcycle, color: Colors.white, size: 28,),
                      SizedBox(width: 20,),
                      Text('Pesan sekarang', style: TextStyle(color: Colors.white),)
                    ],
                  );
                }
              ),
            )
          ],
        )
      ),
    );
  }
}