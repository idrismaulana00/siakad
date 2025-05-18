import 'package:flutter/material.dart';

class PencapainKuliahPage extends StatelessWidget {
  const PencapainKuliahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pencapain Kuliah'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Center(child: Text('ini halaman pencapain kuliah')),
    );
  }
}
