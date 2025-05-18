import 'package:flutter/material.dart';

class SertifikasiPage extends StatelessWidget {
  const SertifikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sertifikasi'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Center(child: Text('ini halaman sertifikasi')),
    );
  }
}
