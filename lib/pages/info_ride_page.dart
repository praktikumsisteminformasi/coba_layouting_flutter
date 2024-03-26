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

  final formKey = GlobalKey<FormState>();
  final pickUpPointTextController = TextEditingController();
  final destinationAddressTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('INFORJEK', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color(0xff4a8bc2),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // Titik jemput
            TextFormField(
              controller: pickUpPointTextController,
              decoration: const InputDecoration(
                label: Text('Titik jemput: Jl. Dari Sini No. 123'),
                border: OutlineInputBorder()
              ),
            ),

            const SizedBox(height: 20,),

            // Alamat tujuan
            TextFormField(
              controller: destinationAddressTextController,
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